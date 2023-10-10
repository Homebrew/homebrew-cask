cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.12"
  sha256 arm:   "d8a7b9cbeeb5995e190b2105f7149865cbe10f211e396a164ce9ce8f7eb35d78",
         intel: "bce5c1b43f8e078eb4a5450cecaddd2584665c713c103c944401a5fa639691a1"

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
