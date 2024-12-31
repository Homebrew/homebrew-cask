cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.30"
  sha256 arm:   "f20f275426ead0bf171598353661aae9e757193a0031e9ecfa7739d4ae431e42",
         intel: "0e72e0137bb5c52b4ee5cc74d27f5246750be8f1b1d5d38bfc7d9b16645773a6"

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
