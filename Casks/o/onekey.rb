cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.16.0"
  sha256 arm:   "9ad845f4402b778cf5355259e1fc619504bb40d63dd9a8c729fc074e3882e805",
         intel: "2d512ebdc32d7dcabdfb2a8408e34aa2e7ea716c5e659ab34f15076a15986aee"

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
