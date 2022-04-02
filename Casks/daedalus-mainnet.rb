cask "daedalus-mainnet" do
  version "4.9.0,21112"
  sha256 "ce5aac78e03f8b12497b66a141fc655d3fdc037400c1373eefb70d2e634f39b3"

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
