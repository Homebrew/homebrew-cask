#!/usr/bin/env ruby

require 'fileutils'
require 'open3'
require 'pathname'

def git(*args)
  system 'git', *args
  exit $?.exitstatus unless $?.success?
end

repo_dir = Pathname(ARGV[0])
repo = ARGV[1]

puts 'Detecting changes…'
[
  '.editorconfig',
  '.gitattributes',
  '.github/*.md',
  '.github/*.yml',
  '.github/ISSUE_TEMPLATE/*.{md,yml}',
  '.github/workflows/{cache,ci,dispatch-command,rebase,rerun-workflow,review,triage}.yml',
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

workflow = File.read(repo_dir.join('.github/PULL_REQUEST_TEMPLATE.md'))
File.write repo_dir.join('.github/PULL_REQUEST_TEMPLATE.md'), workflow.gsub(/Homebrew\/homebrew-cask\/(pulls|issues|search)/, "#{repo}/\\1")

out, err, status = Open3.capture3('git', '-C', repo_dir.to_s, 'status', '--porcelain', '--ignore-submodules=dirty')
raise err unless status.success?

repo_changed = !out.chomp.empty?

unless repo_changed
  puts 'No changed detected.'
  exit
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

puts '::set-output name=pull_request::true'
