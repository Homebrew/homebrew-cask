cask "comparemerge" do
  version "2.13z,113"
  sha256 "fc40bd6c8aefa75985df542169067048ca85b0fb2ae7feec5edf2e98399f51ea"

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge#{version.before_comma}#{version.after_comma}.zip"
  appcast "https://sourceforge.net/projects/comparemergenosandbox/rss"
  name "CompareMerge"
  desc "Tool for file comparison and merging text-like files"
  homepage "https://sourceforge.net/projects/comparemergenosandbox/"

  app "CompareMerge#{version.before_comma}#{version.after_comma}/CompareMerge#{version.before_comma}#{version.after_comma}.app"
end
