cask "daedalus-testnet" do
  version "4.8.0,20689"
  sha256 "5b8740fdbbc9626d1b9a4190e2db42c568b86d125419b43748f62570a542206f"

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
