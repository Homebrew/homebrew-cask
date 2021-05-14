cask "smartgit" do
  version "20.2.5"
  sha256 "7674b546af9544499599fe82f8806df8001525ff0d3e19cda8ef125452d969d0"

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
