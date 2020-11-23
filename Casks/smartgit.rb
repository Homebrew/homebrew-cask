cask "smartgit" do
  version "20.2"
  sha256 "38cadfc39bbec63f8ee2a79651bb8ebba67aa06ee544a352bc3798462488cc4d"

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://www.syntevo.com/smartgit/changelog.txt",
          must_contain: version.chomp(".0")
  name "SmartGit"
  homepage "https://www.syntevo.com/smartgit/"

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
