cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.24.0"
  sha256 arm:   "36fb748849348fadbd25bceb917dc792c58383336c086ec8773a7f2a6dda07ff",
         intel: "5f387c44247498ebdb908b1fc28615f6bd356d9a51af8cf9e8be0fd71bdc79b9"

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
