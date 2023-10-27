cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.15"
  sha256 arm:   "11daddc23d22f96e24e838bce3a60c83544eda35fc9a21dfaf0252fa80bad11d",
         intel: "78cd8acab2109ffc8261532108720b74521dff520f0e1bf88cff5b25284f0c72"

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
