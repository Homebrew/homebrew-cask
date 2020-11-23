cask "smartgit" do
  version "20.2.0"
  sha256 "d8f6aab8ad5ac7f512cd5b406e7574c8bd8a30b565cbc14a92a136eaf18aa32c"

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://www.syntevo.com/smartgit/changelog.txt",
          must_contain: version.chomp(".0")
  name "SmartGit"
  homepage "https://www.syntevo.com/smartgit/"

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
