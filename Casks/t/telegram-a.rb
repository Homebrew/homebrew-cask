cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.24"
  sha256 arm:   "a6c84b82054fda438e7b12b505223a00ee087599d451e9980259d3be2787f690",
         intel: "389bd05c474a1eea7b5a83fd0147fc32e2354b91f7e7420240a5a27bf3c5a87f"

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
