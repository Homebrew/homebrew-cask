cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.34"
  sha256 arm:   "973f38c0eb58821d5a60ef53468b4d7903518a237c322b2731ce066f4894d419",
         intel: "1b4356da699f4972b26730cb0b793847925e5782d85cb267e9639a067dc9079b"

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
