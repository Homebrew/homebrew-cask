cask "chalk" do
  version "1.7.3"
  sha256 "9090c3fe8e14a7f2bff0092c1b379b169658b458eab5957149ed29cd67144dd8"

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
