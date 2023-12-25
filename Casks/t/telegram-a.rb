cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.3.0"
  sha256 arm:   "2035a26425640fb74084b79ce3f9c08abf2ce35550dcb53b22c6778a47435689",
         intel: "650eb24ee87fcc3ffc12fb03f29d31edb2c25972341d2412e0b11b812f03ca59"

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
