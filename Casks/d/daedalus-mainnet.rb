cask "daedalus-mainnet" do
  arch arm: "aarch64", intel: "x86_64"

  version "11.2.0,86185,8f9737937"
  sha256 arm:   "1592a4442141f315b58b460656fd168ed900499641301082d5977c5f7e624c65",
         intel: "8c5c548dfdec3c3dedb4b82ee71d18e8b0894cc13b5a613851967ae6da4e15d3"

  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.csv.first}-#{version.csv.second}-mainnet-#{version.csv.third}-#{arch}-darwin.pkg"
  name "Daedalus Mainnet"
  desc "Cryptocurrency wallet for ada on the Cardano blockchain"
  homepage "https://daedaluswallet.io/"

  livecheck do
    url "https://update-cardano-mainnet.iohk.io/daedalus-latest-version.json"
    regex(/daedalus[._-]v?(\d+(?:\.\d+)+)[._-](\d+)(?:[._-]mainnet)?[._-](\h+)/i)
    strategy :json do |json, regex|
      match = json.dig("platforms", "darwin", "URL")&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  depends_on :macos

  pkg "daedalus-#{version.csv.first}-#{version.csv.second}-mainnet-#{version.csv.third}-#{arch}-darwin.pkg"

  uninstall pkgutil: "org.Daedalusmainnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Mainnet",
    "~/Library/Preferences/com.electron.daedalus-mainnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-mainnet.savedState",
  ]
end
