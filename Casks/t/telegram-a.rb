cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.17"
  sha256 arm:   "34d810292caae12e72d9f2f7323f15de379c437637b88d21a05dc1956f1ce77b",
         intel: "e42fe53e65e7203b450398bb6111d827b4d43167c9e4d25b72100c4dfc284d8c"

  url "https://github.com/Ajaxy/telegram-tt/releases/download/v#{version}/Telegram-A-#{arch}.dmg",
      verified: "github.com/Ajaxy/telegram-tt/"
  name "Telegram A"
  desc "Web client for Telegram messenger"
  homepage "https://web.telegram.org/a/get"

  depends_on macos: ">= :sierra"

  app "Telegram A.app"

  zap trash: [
    "~/Library/Application Support/Telegram A",
    "~/Library/Preferences/org.telegram.TelegramA.plist",
    "~/Library/Saved Application State/org.telegram.TelegramA.savedState",
  ]
end
