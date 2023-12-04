cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.22"
  sha256 arm:   "9937c5e3bbc90c7037a816a9286ee8c477eced8b26f8c00fa3b1f07da6409d39",
         intel: "2f55cff7933e422dc4090f4a480ede6cad164cac12e45b60646f88e0368f7e0b"

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
