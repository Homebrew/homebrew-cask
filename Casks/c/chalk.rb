cask "chalk" do
  version "1.7.4"
  sha256 "25288e7ca3689200c9af16191f9a15a051347b72796c868c4a8a93d50145ef62"

  url "https://pierre.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  name "Chalk"
  desc "Calculator software"
  homepage "https://www.chachatelier.fr/chalk/"

  livecheck do
    url "https://pierre.chachatelier.fr/chalk/downloads/chalk-sparkle-en.rss"
    strategy :sparkle, &:short_version
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
