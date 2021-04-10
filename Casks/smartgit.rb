cask "smartgit" do
  version "20.2.4"
  sha256 "753934c729ac808b882f6798bc84b49db45bbeb4a8e6c4399cebcf3d559b62c1"

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  name "SmartGit"
  homepage "https://www.syntevo.com/smartgit/"

  livecheck do
    url "https://www.syntevo.com/smartgit/changelog.txt"
    strategy :page_match
    regex(%r{href=.*?/smartgit-macosx-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
