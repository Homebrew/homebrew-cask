cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.10"
  sha256 arm:   "c1fe1a49dd20d8f6c6887f74664c514c14f2dae6715ace7439182fdabfa94000",
         intel: "e054083d6e34dc1cf5198007ac87e5c325a0c1ae0821ce77ef865fde608af4e0"

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
