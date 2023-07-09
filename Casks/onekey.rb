cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.9.0"
  sha256 arm:   "a03c91ce165fc3048cd97dc1a20cc4f79816818548a937d33049103f7cf2e2c0",
         intel: "d37b877dda07bef53901f19fdba450d202939b491dfabe02712f2354a0dfa8e1"

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
