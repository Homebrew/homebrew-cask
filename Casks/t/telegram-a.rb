cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.0.21"
  sha256 arm:   "a2ff74897d3a51361ab886259638e859e3e6ca00fc3c95dd76316bbbfb3041bf",
         intel: "13779eb69b9bb47ab65c4a79d8c076cb981b04f80065b29b7532920496cb63dd"

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
