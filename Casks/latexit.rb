cask "latexit" do
  version "2.16.3"
  sha256 "4e564b1c039b310cbb865e18b81236f88275086551da56516b1d9b5517cecf17"

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
