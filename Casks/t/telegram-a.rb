cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.4.3"
  sha256 arm:   "264d74a498ddd9a033a531c33bffebd889fa8a6851d8653a47b0c467c8d7d24a",
         intel: "ab968fda075cb9396aa2c7e6c087d7e0ffebfddc973cc0d54058ad8ce8408c26"

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
