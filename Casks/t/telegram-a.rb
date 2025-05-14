cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.51"
  sha256 arm:   "9299cc0b54a6ed896f07d0347476084401e2e96ae01476c3c9fac222ce528e09",
         intel: "92f3d64df020309878d23d65c393ddb64c4cb2bbc5902974fea57348b57a31ee"

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
