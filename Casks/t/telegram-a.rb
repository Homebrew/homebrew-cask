cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.16"
  sha256 arm:   "ce02791bc0f5dc91c13a17fbe3bf334ff3c0b5b5c549152ff3d6e6ce0631115d",
         intel: "b117c3ad4b97b7e492367d55a388521a76439012de2a276fb44ecc2d5c64e5df"

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
