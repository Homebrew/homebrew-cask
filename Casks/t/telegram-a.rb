cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.15"
  sha256 arm:   "f4d3360e12d05527e1b884b5b93e34da20fdc1f9188cb6af2a3c7c420d45aeb9",
         intel: "d40c2cc9d873f024b63e7ceb64de827f3c8f65623e985189ba1036e3fb2a2e08"

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
