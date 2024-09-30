cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.17"
  sha256 arm:   "5f48172c7b68bbfd8829057c7ca513629c2b22cf2e7ac52bdde13855f7e61ca1",
         intel: "c6a80348451e3adc2dc760d277d707fc9669356d5fdf1e729b42e742d1d70829"

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
