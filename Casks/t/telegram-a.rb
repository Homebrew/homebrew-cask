cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.12"
  sha256 arm:   "d9f856048ec7fc55b740cd24a034d1b0bb0e48cf8b200eac2f73c892dc5fd5ee",
         intel: "a6ea69adbed5491b25773eca1f54c1e6e692e1b42b92c97714b60ea4cb80deed"

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
