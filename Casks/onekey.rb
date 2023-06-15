cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.7.0"
  sha256 arm:   "95e88cc8646abb73b263fa9eb893174a08694a55dae392f97283aaa625d48d3d",
         intel: "f638497c3efebcac89ea140453ae476303932e455f7e82f37c6da1aeaf345ddb"

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
