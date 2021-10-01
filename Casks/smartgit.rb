cask "smartgit" do
  if MacOS.version <= :yosemite
    version "18.1.5"
    sha256 "52de2c0f4e4d529063da4c4f9f9de4eed425109139d7ba026944535eb3f0e0b7"
  elsif MacOS.version <= :sierra
    version "20.2.6"
    sha256 "af5fbf8db26edde3d996d99c6e82287332598359fe63ff2cd97c712a1685a2ea"
  else
    version "21.1.2"
    sha256 "528152905e582bea0ed834267529c4fbffeb91e3cc38cafbf546c8674f1e4910"
  end

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  name "SmartGit"
  desc "Git client"
  homepage "https://www.syntevo.com/smartgit/"

  livecheck do
    url "https://www.syntevo.com/smartgit/download/"
    regex(/href=.*?smartgit[._-]macosx[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)
          .map { |match| match[0].tr("_", ".") }
    end
  end

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
