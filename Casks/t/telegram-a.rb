cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.11"
  sha256 arm:   "d214edccda5841df1208bbd39d411eca104707fd81c36e573a83f560fc584b3c",
         intel: "ebac54ae549372e752df394a4f38088eb1ed3752bed511ba465703e2631f1f10"

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
