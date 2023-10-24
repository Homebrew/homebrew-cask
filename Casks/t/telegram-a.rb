cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.13"
  sha256 arm:   "7c08cda419a6dd8b0f82e3f4dfb545876cd364410588f60beb836f96dac00b78",
         intel: "6bf0d86e0c5dbf59f7477145a51dc8e78b2d5e0b268f89a74b5457b1ee5c1e08"

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
