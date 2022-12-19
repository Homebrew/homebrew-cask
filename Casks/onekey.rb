cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.23.0"
  sha256 arm:   "281a23bea088e08044cb08d81d9ad1498a2c14cbc18a5753a0109cc587c0deba",
         intel: "d01545fe508c52c2650b568bb6c144d675b0a035ba3840ac25ddb7d34d0ce645"

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
