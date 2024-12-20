cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.26"
  sha256 arm:   "eea555cc6dcfdfca0c24f65baad1fbd7fdb7da9907e4a371bf134d5ec294a9c7",
         intel: "5ab27a5a507895a20a5b81569f81c07f918aa38d877f446a77560ded6d645e00"

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
