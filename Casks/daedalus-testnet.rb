cask "daedalus-testnet" do
  version "4.10.0,21740"
  sha256 "653c9c3f981c7c0c14cec8bc5be1c67e0ab0869f6577e234f0aa901dfc1a0268"

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
