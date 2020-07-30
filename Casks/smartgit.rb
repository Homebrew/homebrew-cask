cask "smartgit" do
  version "20.1.4"
  sha256 "cd6a403ed57058a7dfe7ab7627034e2beab6099f6ff1fb7a6a1c4f0066d8a6c0"

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://www.syntevo.com/smartgit/changelog.txt",
          must_contain: version.chomp(".0")
  name "SmartGit"
  homepage "https://www.syntevo.com/smartgit/"

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
