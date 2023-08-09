cask "latexit" do
  version "2.16.5"
  sha256 "62fb58e2f7e712ed481549dc198e3ad3ee9714f8221f5ebb777ae2ced56dd5aa"

  url "https://pierre.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  name "LaTeXiT"
  desc "Graphical interface for LaTeX"
  homepage "https://www.chachatelier.fr/latexit/"

  livecheck do
    url "https://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss"
    strategy :sparkle
  end

  auto_updates true

  app "LaTeXiT.app"

  zap trash: [
    "~/Library/Application Scripts/7SFX84GNR7.fr.chachatelier.pierre.LaTeXiT",
    "~/Library/Application Scripts/fr.chachatelier.pierre.LaTeXiT.appex",
    "~/Library/Caches/fr.chachatelier.pierre.LaTeXiT",
    "~/Library/Containers/fr.chachatelier.pierre.LaTeXiT.appex",
    "~/Library/Cookies/fr.chachatelier.pierre.LaTeXiT.binarycookies",
    "~/Library/Group Containers/7SFX84GNR7.fr.chachatelier.pierre.LaTeXiT",
    "~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist",
    "~/Library/Saved Application State/fr.chachatelier.pierre.LaTeXiT.savedState",
  ]
end
