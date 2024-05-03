cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.5"
  sha256 arm:   "ee68f37af991735268d69df859f218f5b169b3b10d878b0cab9e357df5c04236",
         intel: "4e0dfc4edc86a48915efcd424e19172555ab77d628a66921c156289bf45420df"

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
