cask "chalk" do
  version "1.7.1"
  sha256 "a4234b040c99c101090f0ae8f72b7fc6ff7be643772d4d57380858154c869ee3"

  url "https://pierre.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  name "Chalk"
  desc "Calculator software"
  homepage "https://www.chachatelier.fr/chalk/"

  livecheck do
    url "https://pierre.chachatelier.fr/chalk/downloads/chalk-sparkle-en.rss"
    strategy :sparkle
  end

  auto_updates true

  app "Chalk.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.chachatelier.pierre.chalk.sfl*",
    "~/Library/Autosave Information/Calculator.chalk",
    "~/Library/Caches/fr.chachatelier.pierre.Chalk",
    "~/Library/Cookies/fr.chachatelier.pierre.Chalk.binarycookies",
    "~/Library/Preferences/fr.chachatelier.pierre.Chalk.plist",
  ]
end
