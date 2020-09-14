cask "latexit" do
  version "2.14.11"
  sha256 "9358986247cce481dc939d50a9e49c91261d59d12f050c1d88a617223a095afa"

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
