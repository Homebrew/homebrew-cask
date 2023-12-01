cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.17.0"
  sha256 arm:   "69f6df76d748b66ca5842485f1501bde7dd8ba6abac13f0ee4146817818e37d8",
         intel: "920b5c04ad447f4a9d80a890693032f41ad31390785179ab54694926ae8f10f6"

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
