cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.26.0"
  sha256 arm:   "dd3e7d42869ddb81c287dfbf5ba3b417bb8213a5c8dd7baa6cec6a24ecad9385",
         intel: "fd617b98624119087609908b1c076c78c6ab9dc33c5bcbe985c38f2d78ea653c"

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
