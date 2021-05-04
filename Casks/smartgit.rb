cask "smartgit" do
  version "20.2.5"
  sha256 "2078c75ca902b55175063b87e7a6cd28cb0a3b4d0c4f0427ce7352bb9fda237f"

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  name "SmartGit"
  homepage "https://www.syntevo.com/smartgit/"

  livecheck do
    url "https://www.syntevo.com/smartgit/changelog.txt"
    strategy :page_match
    regex(/SmartGit\s*(\d+(?:\.\d+)*)/i)
  end

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
