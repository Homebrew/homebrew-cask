cask "comparemerge" do
  version "2.13z,113"
  sha256 "fc40bd6c8aefa75985df542169067048ca85b0fb2ae7feec5edf2e98399f51ea"

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge#{version.before_comma}#{version.after_comma}.zip"
  name "CompareMerge"
  desc "Tool for file comparison and merging text-like files"
  homepage "https://sourceforge.net/projects/comparemergenosandbox/"

  livecheck do
    url "https://sourceforge.net/projects/comparemergenosandbox/rss"
    strategy :page_match do |page|
      match = page.match(%r{/CompareMerge(\d+(?:\.\d+)*\w)(\d+)\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "CompareMerge#{version.before_comma}#{version.after_comma}/CompareMerge#{version.before_comma}#{version.after_comma}.app"
end
