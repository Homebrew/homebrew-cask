cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.48"
  sha256 arm:   "6b2abe734ffe37deada2a4dadee25995bad0de9bedb375343e4fd1e0375c25ee",
         intel: "c35a6c85a33f32d3047bcbdf6a129e3f0b845dc017192ce22d4cd3900bc31bad"

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
