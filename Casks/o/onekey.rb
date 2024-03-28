cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.23.0"
  sha256 arm:   "13aab32824d4fd18b3734f363345b0c9b7f88b49a4047a2427924b7bb187440f",
         intel: "ef2392093a01034bc6cb9f94a47f996828e072424cc8e1af18e9a960378bfc5f"

  url "https://github.com/OneKeyHQ/app-monorepo/releases/download/v#{version}/OneKey-Wallet-#{version}-mac-#{arch}.dmg",
      verified: "github.com/OneKeyHQ/app-monorepo/"
  name "OneKey"
  desc "Crypto wallet"
  homepage "https://onekey.so/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "OneKey.app"

  zap trash: [
    "~/Library/Application Support/@onekeyhq",
    "~/Library/Logs/@onekeyhq",
    "~/Library/Preferences/so.onekey.wallet.desktop.plist",
    "~/Library/Saved Application State/so.onekey.wallet.desktop.savedState",
  ]
end
