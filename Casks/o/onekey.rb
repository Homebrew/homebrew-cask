cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.6.1"
  sha256 arm:   "280b3c9d120f5bc8fc66c898856388db54ba7693ee40d26537f10c8854d549cc",
         intel: "a57a5c21aafd2ee2856e2eef8a5a603d76db5552c604246557a9fe00eca42808"

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
