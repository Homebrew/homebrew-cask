cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.19.0"
  sha256 arm:   "3026eeb51d2d6b326295dc606dc2f898331fcfec188d3c7b0f3b75578efb4e1c",
         intel: "74c749cbd8b94ccec88cef4eab3e21c7016bbb46b37a6f80615829fbecd8d877"

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
