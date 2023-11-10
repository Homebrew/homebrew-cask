cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.19"
  sha256 arm:   "df3b5f0291f3657ebdb2c3a84ac8970490cf71119fff69bebefc6e8739ec859d",
         intel: "ac8d558913d2ee2ba83821f21edd74ae0399d429c807ff57080e45f9d466fd52"

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
