cask "daedalus-testnet" do
  version "3.3.1,16693"
  sha256 "eb9fd819bf34709a0099cec5dd0b86725b79f8921deb066b4300e12b159a7713"

  url "https://updates-cardano-testnet.s3.amazonaws.com/daedalus-#{version.before_comma}-testnet-#{version.after_comma}.pkg",
      verified: "updates-cardano-testnet.s3.amazonaws.com/"
  appcast "https://updates-cardano-testnet.s3.amazonaws.com/daedalus-latest-version.json"
  name "Daedalus Testnet"
  desc "Cryptocurrency wallet for test ada on the Cardano Testnet blockchain"
  homepage "https://developers.cardano.org/en/testnets/cardano/get-started/wallet/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.before_comma}-testnet-#{version.after_comma}.pkg"

  uninstall pkgutil: "org.Daedalustestnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Testnet",
    "~/Library/Preferences/com.electron.daedalus-testnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-testnet.savedState",
  ]
end
