cask "smartgit" do
  version "21.1.0"
  sha256 "6969e3b4fb00b5bf7b255ceb858c567a4bcda8967a728f3d18669d9fc84e5cd5"

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  name "SmartGit"
  desc "Git client"
  homepage "https://www.syntevo.com/smartgit/"

  livecheck do
    url "https://www.syntevo.com/smartgit/changelog.txt"
    strategy :page_match
    regex(/SmartGit\s*(\d+(?:\.\d+)*)/i)
  end

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
