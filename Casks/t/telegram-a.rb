cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.4.1"
  sha256 arm:   "e235563eb97d1cd089418bd8c92d7c66544a105ddadfcc84da78a037f8f0c542",
         intel: "09aab42b762ae7be1ee1702457fbee711127c9c87c568f650c193ff94c57d480"

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
