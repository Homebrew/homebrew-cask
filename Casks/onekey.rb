cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.22.0"
  sha256 arm:   "d3cdd42442ba8b2324e5a0d88f5db46f4b2434067fcf4729d9a85dcbc7aeb2e1",
         intel: "61e93810ae4a583859d43a06c995a1c96685dddb8da8c69451d367b482975414"

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
