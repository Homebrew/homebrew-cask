cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.41"
  sha256 arm:   "a122a04d0f28957f2899e5961259dd1c236e612cc4ff7a7f996b6562ba0d1bf7",
         intel: "5d3a1ee06d98270f1d6210c7b119efa9d1d6ed30ee592ee9a2c80d3d52a38078"

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
