cask "iota-wallet" do
  version "2.5.7"
  sha256 "dfb4219c68e97a0056df6a59c5ba98684086c4f5347357c14143842eb33ecea9"

  url "https://github.com/iotaledger/wallet/releases/download/v#{version}/IOTA.Wallet-#{version}.dmg",
      verified: "github.com/iotaledger/wallet/"
  name "IOTA Wallet"
  homepage "https://iota.org/"

  app "IOTA Wallet.app"

  zap trash: "~/Library/Application Support/IOTA Wallet"

  caveats do
    discontinued
  end
end
