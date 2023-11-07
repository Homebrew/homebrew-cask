cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.18"
  sha256 arm:   "d0e26b16b59bb0fa0cad8cd53131c47150fcf3c8556d1b0a7a9f7f751269fd69",
         intel: "da8670acdf252f9615666e75d9b7ec7e4d6a158fa256e4e17b3f557d352a8cc5"

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
