cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.4.5"
  sha256 arm:   "e20531236047ed4189e49d2c6c0ddc968126ab72dcfb7ea085d069733fbb728a",
         intel: "46b7727c536ac2a908d062f6403f10d925dbc9d27df408e42d5ffefda2c29a24"

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
