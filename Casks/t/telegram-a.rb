cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.19"
  sha256 arm:   "ef33a112d23dd99c35b2c84452b49f876f68d74c0b6fe610e467914f970e89af",
         intel: "5e852393849ae6cc6af03c17a0af1206bfb8e9787e59e40e09a9cc3c48c80ec1"

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
