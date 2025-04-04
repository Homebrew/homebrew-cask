cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.7.0"
  sha256 arm:   "0fbb5f1d8323718be81ad9389d571029d10a0b56c269ce34c8a782a9c77b0ca5",
         intel: "e6220cf9dc2c6eb8c5734ec251da13ce0cc878b6cbd31f3653744871aa703a9b"

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
