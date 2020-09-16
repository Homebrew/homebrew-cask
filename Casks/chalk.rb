cask "chalk" do
  version "1.6.3"
  sha256 "29a76aefa9379d2d55d3842d794281fd473f61a0cdb998f512ada1fbd74b63ec"

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
