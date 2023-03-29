cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "82497849b1b0d9b3d369133fd6fcc18e70514c7bf0947f71966e9f713f7ab40f",
         intel: "fefcad9cb352a41420a6b83c89ce5b13c9f210555cd93e0a35f4d5210f8c89a3"

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
