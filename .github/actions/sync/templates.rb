#!/usr/bin/env ruby

require 'fileutils'
require 'open3'
require 'tmpdir'
require 'pathname'

CASK_REPOS = [
  'Homebrew/homebrew-cask-drivers',
  'Homebrew/homebrew-cask-fonts',
  'Homebrew/homebrew-cask-versions',
].freeze

tmpdir = Dir.mktmpdir

def git(*args)
  system 'git', *args
  exit $?.exitstatus unless $?.success?
end

git 'config', '--global', 'user.name', 'BrewTestBot'
git 'config', '--global', 'user.email', 'homebrew-ops@lists.sfconservancy.org'

ENV['GIT_ASKPASS'] = File.join(tmpdir, 'git_askpass.sh')

File.write ENV['GIT_ASKPASS'], <<~SH
  #!/bin/sh
  echo "$HOMEBREW_GITHUB_API_TOKEN"
SH

FileUtils.chmod '+x', ENV['GIT_ASKPASS']

CASK_REPOS.each do |repo|
  repo_dir = Pathname("#{tmpdir}/#{repo}")

  puts "Cloning #{repo}…"
  git 'clone', "https://github.com/#{repo}.git", '--quiet', '--depth=1', repo_dir.to_s
  puts

  puts 'Detecting changes…'
  [
    '.editorconfig',
    '.gitattributes',
    '.github/actions/{automerge,checkout_cask_pr}/**/*',
    '.github/ISSUE_TEMPLATE/*.md',
    '.github/workflows/{automerge,ci,old-ci}.yml',
    '.gitignore',
    '.travis.yml',
    'Casks/.rubocop.yml',
  ].each do |glob|
    src_paths = Pathname.glob(glob)
    dst_paths = Pathname.glob(repo_dir.join(glob))

    dst_paths.each do |path|
      FileUtils.rm_f path
    end

    src_paths.each do |path|
      repo_dir.join(path.dirname).mkpath
      FileUtils.cp path, repo_dir.join(path)
    end
  end

  FileUtils.rm repo_dir.join('.github/ISSUE_TEMPLATE/02_feature_request.md')

  workflow = File.read(repo_dir.join('.github/PULL_REQUEST_TEMPLATE.md'))
  File.write repo_dir.join('.github/PULL_REQUEST_TEMPLATE.md'), workflow.gsub(/Homebrew\/homebrew-cask\/(pulls|issues|search)/, "#{repo}/\\1")

  out, err, status = Open3.capture3('git', '-C', repo_dir.to_s, 'status', '--porcelain', '--ignore-submodules=dirty')
  raise err unless status.success?

  repo_changed = !out.chomp.empty?

  unless repo_changed
    puts 'No changed detected.'
    puts
    next
  end

  git '-C', repo_dir.to_s, 'add', '--all'

  out, err, status = Open3.capture3('git', '-C', repo_dir.to_s, 'diff', '--name-only', '--staged')
  raise err unless status.success?

  modified_paths = out.lines.map(&:chomp)

  modified_paths.each do |modified_path|
    puts "Detected changes to #{modified_path}."
    git '-C', repo_dir.to_s, 'commit', modified_path, '--message', "#{File.basename(modified_path)}: update to match main repo", '--quiet'
  end
  puts

  puts 'Pushing changes…'
  git '-C', repo_dir.to_s, 'push', 'origin', 'master'

  puts
end
