cask "daedalus-testnet" do
  version "4.0.5,17596"
  sha256 "95be61247ea760eb7961ed6d3c13d22ec7a84271a53b2381e64a1c6b4426f55e"

  url "https://updates-cardano-testnet.s3.amazonaws.com/daedalus-#{version.before_comma}-testnet-#{version.after_comma}.pkg",
      verified: "updates-cardano-testnet.s3.amazonaws.com/"
  name "Daedalus Testnet"
  desc "Cryptocurrency wallet for test ada on the Cardano Testnet blockchain"
  homepage "https://developers.cardano.org/en/testnets/cardano/get-started/wallet/"

  livecheck do
    url "https://updates-cardano-testnet.s3.amazonaws.com/daedalus-latest-version.json"

    strategy :page_match do |page|
      version = page.match(/"version":"(.+?)"/)[1]
      build = page.match(/-(\d+(?:\.\d+)*)\.pkg/)[1]
      "#{version},#{build}"
    end
  end

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
