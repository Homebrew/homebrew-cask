cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.43"
  sha256 arm:   "cab9c6487312fb74a8326e0800cb208998ffcd43c0d8cda05c7e1ac311aa72b4",
         intel: "f48d1cbf85d9c3dd715ba063f9771c2244362d63ce5b7c75e725e1719a717bd1"

  url "https://github.com/Ajaxy/telegram-tt/releases/download/v#{version}/Telegram-A-#{arch}.dmg",
      verified: "github.com/Ajaxy/telegram-tt/"
  name "Telegram A"
  desc "Web client for Telegram messenger"
  homepage "https://web.telegram.org/a/get"

  depends_on macos: ">= :high_sierra"

  app "Telegram A.app"

  zap trash: [
    "~/Library/Application Support/Telegram A",
    "~/Library/Preferences/org.telegram.TelegramA.plist",
    "~/Library/Saved Application State/org.telegram.TelegramA.savedState",
  ]
end
