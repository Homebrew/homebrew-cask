cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.31"
  sha256 arm:   "a1cc553ea088d746801f7398d1d352b4c5247d53748bcfa4c2a56dce28ead983",
         intel: "0a883b71bf93d4357a518cd4a181e3f6c4f3790e07776f615e410e93f6891a84"

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
