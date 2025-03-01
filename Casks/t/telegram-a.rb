cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.42"
  sha256 arm:   "eca412b1c6e79e3c172304c1e195399ba3b59dbf6643fad7dd6ecfd229e0ce9e",
         intel: "c9f38378d10dfc3a89a261522bddb1a869cceb01e38332c3f59a92cf990d8cf8"

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
