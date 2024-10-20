cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.18"
  sha256 arm:   "b14b599dd05b407edb50a36487b39f50572c3bed30f79721c14d707bd705a1ab",
         intel: "56dde3c2e1aed75740c34477f5798bfc91be61fd4bd98a6927cc5072b9fb2232"

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
