cask "latexit" do
  version "2.15.0"
  sha256 "e1a1e4cc68cfdadcfebd76e490f030ba41c04a58d6197f6bd53ccc229c546227"

  url "https://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast "https://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss"
  name "LaTeXiT"
  desc "Graphical interface for LaTeX"
  homepage "https://www.chachatelier.fr/latexit/"

  auto_updates true

  app "LaTeXiT.app"

  zap trash: [
    "~/Library/Caches/fr.chachatelier.pierre.LaTeXiT",
    "~/Library/Cookies/fr.chachatelier.pierre.LaTeXiT.binarycookies",
    "~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist",
  ]
end
