cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.18.0"
  sha256 arm:   "1746671bc5fd4d972ccc207d1d15c7a07bb037968604cf960f9adf49508d1e50",
         intel: "6be52911b76b777b21e8be5e7b62292edba6fdba78209792f111191a08142673"

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
