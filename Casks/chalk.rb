cask "chalk" do
  version "1.6.4"
  sha256 "07490b62e539541b471603b186885e181389ea9badc3689dda94c0650dfab78d"

  url "https://www.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast "https://pierre.chachatelier.fr/chalk/downloads/chalk-sparkle-en.rss"
  name "Chalk"
  homepage "https://www.chachatelier.fr/chalk/"

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
