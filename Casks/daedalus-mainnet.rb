cask "daedalus-mainnet" do
  version "4.9.1,21554"
  sha256 "767e2b6beaa50245ef07357d679110a952a65971371dba61c957f2146fbba778"

  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.csv.first}-mainnet-#{version.csv.second}.pkg",
      verified: "update-cardano-mainnet.iohk.io/"
  name "Daedalus Mainnet"
  desc "Cryptocurrency wallet for ada on the Cardano blockchain"
  homepage "https://daedaluswallet.io/"

  livecheck do
    url "https://update-cardano-mainnet.iohk.io/daedalus-latest-version.json"
    strategy :page_match do |page|
      match = page.match(%r{/daedalus[._-](\d+(?:\.\d+)+)[._-]mainnet[._-](\d+)\.pkg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.csv.first}-mainnet-#{version.csv.second}.pkg"

  uninstall pkgutil: "org.Daedalusmainnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Mainnet",
    "~/Library/Preferences/com.electron.daedalus-mainnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-mainnet.savedState",
  ]
end
