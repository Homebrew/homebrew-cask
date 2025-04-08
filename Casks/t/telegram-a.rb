cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.49"
  sha256 arm:   "f3d5778e877f54a616c8097800028e3f39ff2da5fc9613d491894bab5ddcbb75",
         intel: "074395608bcd7cf6d81ac18b2ab6c7e1c6a74aeb2ef813d4f1932f7519facd74"

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
