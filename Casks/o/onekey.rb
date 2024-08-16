cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.1.0"
  sha256 arm:   "8964df00bbd32898e1f65bba766b122ab6a2a8be9799d229fe892665ba14bb6c",
         intel: "287ec8c3c16c0de2b6ae946bdd622d13c124832ca056cceadc5d47b0f97ab0eb"

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
