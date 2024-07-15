cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.8"
  sha256 arm:   "0c73538aac5b3d271978e1d7d87e7667d287210ae29587d70d02c4933803b814",
         intel: "39a691cb8ecc829d2e4b21002a990be7d1c4fb794a6025e83abe7dfa3b09da4b"

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
