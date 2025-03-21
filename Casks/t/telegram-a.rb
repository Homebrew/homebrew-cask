cask "telegram-a" do
  arch arm: "arm64", intel: "x64"

  version "10.9.44"
  sha256 arm:   "6e0d824f1b4ead9ab28d321af0f075f8391be3caeae9109c341f4272ad66d2a8",
         intel: "d42a730a14a26990486329422551b947ef375e559cccc21f75bdd5556990403d"

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
