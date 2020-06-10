#!/usr/bin/env ruby

require 'fileutils'
require 'open3'
require 'tmpdir'

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
  repo_dir = "#{tmpdir}/#{repo}"

  puts "Cloning #{repo}…"
  git 'clone', "https://github.com/#{repo}.git", '--quiet', '--depth=1', repo_dir
  puts

  puts 'Detecting changes…'
  [
    '.editorconfig',
    '.gitattributes',
    '.github',
    '.gitignore',
    '.travis.yml',
    'Casks/.rubocop.yml',
  ].each do |path|
    FileUtils.rm_rf File.join(repo_dir, path)
    FileUtils.cp_r path, File.join(repo_dir, path)
  end

  # Remove actions which should only be run from the main repo.
  FileUtils.rm_r File.join(repo_dir, '.github/actions/sync')
  FileUtils.rm   File.join(repo_dir, '.github/workflows/sync_labels.yml')
  FileUtils.rm   File.join(repo_dir, '.github/workflows/sync_templates_and_ci_config.yml')

  FileUtils.rm File.join(repo_dir, '.github/ISSUE_TEMPLATE/02_feature_request.md')

  workflow = File.read(File.join(repo_dir, '.github/PULL_REQUEST_TEMPLATE.md'))
  File.write File.join(repo_dir, '.github/PULL_REQUEST_TEMPLATE.md'), workflow.gsub(/Homebrew\/homebrew-cask\/(pulls|issues|search)/, "#{repo}/\\1")

  out, err, status = Open3.capture3('git', '-C', repo_dir, 'status', '--porcelain', '--ignore-submodules=dirty')
  raise err unless status.success?

  repo_changed = !out.chomp.empty?

  unless repo_changed
    puts 'No changed detected.'
    puts
    next
  end

  git '-C', repo_dir, 'add', '--all'

  out, err, status = Open3.capture3('git', '-C', repo_dir, 'diff', '--name-only', '--staged')
  raise err unless status.success?

  modified_paths = out.lines.map(&:chomp)

  modified_paths.each do |modified_path|
    puts "Detected changes to #{modified_path}."
    git '-C', repo_dir, 'commit', modified_path, '--message', "#{File.basename(modified_path)}: update to match main repo", '--quiet'
  end
  puts

  puts 'Pushing changes…'
  git '-C', repo_dir, 'push', 'origin', 'master'

  puts
end
