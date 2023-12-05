cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.23"
  sha256 arm:   "06b3746a7aa3be82ccfd7b144d598508f4290945ade858b9020fa3d431ff2271",
         intel: "db6429c79d86cf9d0c5eabe4f28f18f6e8040d0a470eaee5af54e8a73663c80c"

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
