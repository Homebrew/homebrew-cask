cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.8.0"
  sha256 arm:   "7bafa66550cfd00ca4b4e31b50ade22abd2a3edd4432d2644465a69cf266a921",
         intel: "00e88cc0dc8d8fd4e92b34eefd49af352a20f24c4e0977b9596816597ab9a712"

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
