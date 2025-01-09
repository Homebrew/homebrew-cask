cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.5.2"
  sha256 arm:   "6ad21d74e6d3e38cf163b9fcebef6ba53a1917835b47dfe7e394f2717f4c6589",
         intel: "dfd00b3e596a5fb424dd51bf9518048828bbed80753299fcb910c738e6ae728e"

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
  depends_on macos: ">= :catalina"

  app "OneKey.app"

  zap trash: [
    "~/Library/Application Support/@onekeyhq",
    "~/Library/Logs/@onekeyhq",
    "~/Library/Preferences/so.onekey.wallet.desktop.plist",
    "~/Library/Saved Application State/so.onekey.wallet.desktop.savedState",
  ]
end
