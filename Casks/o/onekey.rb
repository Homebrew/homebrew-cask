cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.15.0"
  sha256 arm:   "bb415fded859da83bfa1ea1b5e88d33a8779222a22f776429c549caab507ae07",
         intel: "8aaccdd7fd3534a3e70bf88dae6e96aa184639d36c864324320581c3305db283"

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
