cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.32"
  sha256 arm:   "5223d24cb15b96861e804d6308d2886d5de171ffc03bac9b3df6a8cbfde02535",
         intel: "9cddedc9c466b1f404b3b452e774b7ae1aad1fc0a697f7c9f7a7226343a0a91d"

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
