cask "daedalus-testnet" do
  version "4.9.0,21112"
  sha256 "da4c6f0fe5c32f999c037f9256393f4a1485e03f77403e475bc6732499a56e39"

  url "https://updates-cardano-testnet.s3.amazonaws.com/daedalus-#{version.csv.first}-testnet-#{version.csv.second}.pkg",
      verified: "updates-cardano-testnet.s3.amazonaws.com/"
  name "Daedalus Testnet"
  desc "Cryptocurrency wallet for test ada on the Cardano Testnet blockchain"
  homepage "https://developers.cardano.org/en/testnets/cardano/get-started/wallet/"

  livecheck do
    url "https://updates-cardano-testnet.s3.amazonaws.com/daedalus-latest-version.json"
    strategy :page_match do |page|
      version = page.match(/"version":"(\d+(?:\.\d+)+)"/)[1]
      build = page.match(/(\d+(?:\.\d+)*)\.pkg/)[1]
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.csv.first}-testnet-#{version.csv.second}.pkg"

  uninstall pkgutil: "org.Daedalustestnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Testnet",
    "~/Library/Preferences/com.electron.daedalus-testnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-testnet.savedState",
  ]
end
