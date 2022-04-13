cask "chalk" do
  version "1.7.0"
  sha256 "658ebd2b46bbd1b32478b112c9aa91ef92721d0ceb78bc63a6fc30f75802da7e"

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
