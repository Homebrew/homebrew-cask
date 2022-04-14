cask "nym-wallet" do
  version "1.0.2"
  sha256 "9f5a58e2e06645fce48aa3dd439b0557385b95c0c270fe2b941d36928c2efbbb"

  url "https://github.com/nymtech/nym/releases/download/nym-wallet-v#{version}/nym-wallet_#{version}_x64_macos_11.dmg",
      verified: "github.com/nymtech/nym/"
  name "Nym Wallet"
  desc "Use to bond coins or interact with your Nym node or delegate to other nodes"
  homepage "https://nymtech.net/"

  depends_on macos: ">= :big_sur"
  depends_on arch: :x86_64

  app "nym-wallet.app"

  zap trash: [
    "~/Library/Saved Application State/net.nymtech.wallet.savedState/",
    "~/Library/Caches/net.nymtech.wallet/",
  ]
end
