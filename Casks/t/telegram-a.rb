cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.28"
  sha256 arm:   "180fb44a23f5ec486daf918347b5319d8f989dbd1bf623bb2771d9c3dbb834eb",
         intel: "1ed44dbefb59f2a2b15c4d27408c6fe395952fdd623165623dd6a2421c5ff41c"

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
