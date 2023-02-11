cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.27.0"
  sha256 arm:   "3d62f9e0229fb2033bec45ff505e848ef0798579445553d5adc97a453153381d",
         intel: "72bc915c41cb0043a7df1782c78a29aae22b2fa8b3d12a80e5151fb88bad83b9"

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
