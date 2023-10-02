cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.14.0"
  sha256 arm:   "8b1b4a5a65584f7afede40addf44bf4adcd2f50dee77e5732311794e6bd15b4e",
         intel: "8a6e5115dfa3ab9a4c88483450fb57f67b703197073d9d6e472d78645dd2f55c"

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
