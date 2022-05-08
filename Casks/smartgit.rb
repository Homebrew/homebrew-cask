cask "smartgit" do
  if MacOS.version <= :yosemite
    arch = "macosx"
    version "18.1.5"
    sha256 "52de2c0f4e4d529063da4c4f9f9de4eed425109139d7ba026944535eb3f0e0b7"
  elsif MacOS.version <= :sierra
    arch = "macosx"
    version "20.2.6"
    sha256 "af5fbf8db26edde3d996d99c6e82287332598359fe63ff2cd97c712a1685a2ea"
  elsif Hardware::CPU.intel?
    arch = "x86_64"
    version "21.2.2"
    sha256 "800d62d46e5efdfdf5692d179f88a35b346637536b75d8e6183428438da9478a"
  else
    arch = "aarch64"
    version "21.2.2"
    sha256 "71d8811029c665794b8cb614f6d8ec6ba091eeb53d6b5cf1867870a9c18da83c"
  end

  url "https://www.syntevo.com/downloads/smartgit/smartgit-#{arch}-#{version.dots_to_underscores}.dmg"
  name "SmartGit"
  desc "Git client"
  homepage "https://www.syntevo.com/smartgit/"

  livecheck do
    url "https://www.syntevo.com/smartgit/download/"
    regex(/href=.*?smartgit[._-]#{arch}[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)
          .map { |match| match[0].tr("_", ".") }
    end
  end

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
