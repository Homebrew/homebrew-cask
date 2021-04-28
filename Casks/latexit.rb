cask "latexit" do
  version "2.16.2"
  sha256 "59b70471114e32b7d3ca5a206bd1d075eb8c0778a6e380e7401e616b947ca08d"

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
    "~/Library/Caches/fr.chachatelier.pierre.LaTeXiT",
    "~/Library/Cookies/fr.chachatelier.pierre.LaTeXiT.binarycookies",
    "~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist",
  ]
end
