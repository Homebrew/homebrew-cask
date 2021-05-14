cask "deepgit" do
  version "4.1"
  sha256 "2190658fba01094093ca1e2b51fd0004821dc1a2f27a992b12b53890a37aac4e"

  url "https://www.syntevo.com/downloads/deepgit/deepgit-macosx-#{version.dots_to_underscores}.dmg"
  name "DeepGit"
  desc "Tool to investigate the history of source code"
  homepage "https://www.syntevo.com/deepgit/"

  livecheck do
    url "https://syntevo.com/deepgit/download"
    strategy :page_match do |page|
      v = page[%r{href=.*?/deepgit-macosx-(\d+(?:_\d+)*)\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  app "DeepGit.app"
end
