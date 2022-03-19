cask "chalk" do
  version "1.6.11"
  sha256 "527ec9a00b8396340c136286a4964787a3a166f9c30418f5c5660a3ac966a14b"

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
