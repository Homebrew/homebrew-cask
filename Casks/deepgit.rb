cask "deepgit" do
  version "4.2"
  sha256 "56b2992cbe36268578064827a791f809345ffd1cfda44b653cd1c727af7827ff"

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
