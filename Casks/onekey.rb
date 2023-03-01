cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.30.0"
  sha256 arm:   "b3df29b972a390156434a5330b37dabdc84f2b28a98201b26919b4b2e511cc8b",
         intel: "73eeda4f925d7e523d70f263e65450d095d5761713c42f6569928d6fc8f96ee9"

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
