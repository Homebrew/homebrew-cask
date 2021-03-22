cask "chalk" do
  version "1.6.8"
  sha256 "8ffa3b1aba42c446e99dc9f5b70462117364ad776ff7693ea7110eb217c59a82"

  url "https://pierre.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
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
