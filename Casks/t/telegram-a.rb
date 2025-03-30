cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.46"
  sha256 arm:   "e9b64ef6f3f17c032c5b37e06bea1340f51e6167f2eb3a8da7bb4791ae814222",
         intel: "1d05b501950e1b4ad3cb19b8108c559a52b98f527f6b8ef94d275c8153f7a6ea"

  url "https://github.com/Ajaxy/telegram-tt/releases/download/v#{version}/Telegram-A-#{arch}.dmg",
      verified: "github.com/Ajaxy/telegram-tt/"
  name "Telegram A"
  desc "Web client for Telegram messenger"
  homepage "https://web.telegram.org/a/get"

  depends_on macos: ">= :high_sierra"

  app "Telegram A.app"

  zap trash: [
    "~/Library/Application Support/Telegram A",
    "~/Library/Preferences/org.telegram.TelegramA.plist",
    "~/Library/Saved Application State/org.telegram.TelegramA.savedState",
  ]
end
