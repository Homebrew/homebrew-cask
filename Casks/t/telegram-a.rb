cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.50"
  sha256 arm:   "9d3b58f9dea72a61b68016f9c99a496598ff90e7b7a151d8a288806c28064c14",
         intel: "9aeda2b45cee698ca99de2ef394330413dda8a596beb1d0a4accb1c12d500deb"

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
