cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.25"
  sha256 arm:   "38d5f9f9d14a36127b96e5b7f27c7894dffa9ed1d7ee22aaa66306c004b7d10f",
         intel: "34436dceaf5b95aaa274b765f8c25d567c96f0e98d9088e89064abfa485db43e"

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
