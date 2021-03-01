cask "smartgit" do
  version "20.2.3"
  sha256 "f0a989093add0b07cd109e0ec6427cf7d9953b72dbe86f2efa67317bb979252c"

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://www.syntevo.com/smartgit/changelog.txt",
          must_contain: version.chomp(".0")
  name "SmartGit"
  homepage "https://www.syntevo.com/smartgit/"

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
