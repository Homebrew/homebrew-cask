cask "latexit" do
  version "2.16.0"
  sha256 "cda8e051ad96188a6c4991ef6d1f1d7e4445092ddd1482475f4033a7f8a68cfd"

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
