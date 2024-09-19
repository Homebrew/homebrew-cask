cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.14"
  sha256 arm:   "cc9eeabae4e1891fa502bbc5f32fcd0a075d4bbeea47f03bbe9ec00bc26774af",
         intel: "6ebcfff15180ca7cb9069685c53ad22c96b9de53e446e5d973bfbe857af66781"

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
