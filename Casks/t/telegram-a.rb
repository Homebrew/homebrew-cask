cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.6"
  sha256 arm:   "64778f32535a61ba3175d3bf0f1982ea145e2cef86a57af905aeb06658cb3b73",
         intel: "c0a44fa88d82ed4b47275f2c2d12ba6d570b7a88330c78cfaec89f24bb45c01f"

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
