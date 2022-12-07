cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.21.0"
  sha256 arm:   "9957ef1235289f9ddbe79b5a2bb42e81682861e3db9d4d6564864cb5b10d2f27",
         intel: "6d5a4b2f75ed08fbf1563d84f6ea487cb28908727f4ec21725184116173fdf89"

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
