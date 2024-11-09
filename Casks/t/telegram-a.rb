cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.21"
  sha256 arm:   "fbeda46679769a08e2f6855411b1cca8685d961d691295cc07f349986259d9bf",
         intel: "7cea96f897e699c39bb73cb97bbd89a7951dcd05015d4b60d768b76165a030fb"

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
