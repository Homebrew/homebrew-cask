cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.11"
  sha256 arm:   "70fa84ede7c1bf5f74caf8a91d0f6d270fe441e9d2986475e97e932795582220",
         intel: "92596398d8fd05e87b8fd61f98647ad84cd38af975b5187d44322924b85c7c97"

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
