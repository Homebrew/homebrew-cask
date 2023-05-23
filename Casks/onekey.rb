cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.6.0"
  sha256 arm:   "a1314d49202916c902f9fb2884489533b59b287139dfdd1b4c54e6ba143c2435",
         intel: "9173f7b9f1b0a44e27e74c3217ac282eec032bbde3b2ba20e11e8e653dd87cc7"

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
