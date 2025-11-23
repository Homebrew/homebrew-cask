cask "latexit" do
  version "2.16.6"
  sha256 "db4e82a20f495161cba15c72cfdfd646652af7c8c54d4a6543aa0fb3acad246a"

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
