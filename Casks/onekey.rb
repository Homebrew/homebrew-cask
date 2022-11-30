cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.20.0"
  sha256 arm:   "6139034afdfbaaa7eb7213cccdfb56d064e107c4c3a567cab22f8424177c0159",
         intel: "2bdde85e207cd02b9a73ce24c341c0d0129f6770cc6b8363a9c43d4e3b729b8c"

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
