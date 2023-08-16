cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.11.0"
  sha256 arm:   "0d97b547220692018d9b0c5bf8aa32a83c020591735bbd3be6bdc5162a5ae10f",
         intel: "a7bf31e5994e9bc6ef6b9868cac4609d3aa9411aa88dc40a2b452a04bb41dbe3"

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
