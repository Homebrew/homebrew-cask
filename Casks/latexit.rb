cask "latexit" do
  version "2.14.10"
  sha256 "fd8a25282dc932f75aa7bd1c4d66b463ddfcac0ae9ae0d21c8a737f9dbef0f5c"

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
