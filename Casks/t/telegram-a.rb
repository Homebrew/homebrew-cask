cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.23"
  sha256 arm:   "f85d1adeafa7ba4c9d31526c43b51045baa3fbde1a5ce1404a2f48648545b4f2",
         intel: "e1d96236c8f354f1b085a65dff289e3aee65ccfda661b2bf5e28f9ee98fb55a5"

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
