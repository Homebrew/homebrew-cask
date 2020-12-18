cask "smartgit" do
  version "20.2.1"
  sha256 "6f941e23e6b3fc7eeccfae10a3dcc7c5367bf395b99830fea589c45f023ab0c4"

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://www.syntevo.com/smartgit/changelog.txt",
          must_contain: version.chomp(".0")
  name "SmartGit"
  homepage "https://www.syntevo.com/smartgit/"

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
