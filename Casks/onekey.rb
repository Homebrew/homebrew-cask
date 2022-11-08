cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.17.0"
  sha256 arm:   "dccf904fafcd2a343f1dd4f5da91f522fd3c3695ac94c863ec9f9c81714e6904",
         intel: "f000401f3df6c815f56caa34ccd3e54a089e2e7c5a2e92328a086c6875cbdaf8"

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
