cask "daedalus-mainnet" do
  arch arm: "aarch64", intel: "x86_64"

  version "11.6.1,88397,d8ee6df04"
  sha256 arm:   "74895b201fca45157ae8d0128350ea72400574705b516c5aea6c070307c2e882",
         intel: "1eeb3ba290c456408e64a6e29436b2d1337a434dd354875ab36a749454be3d38"

  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.csv.first}-#{version.csv.second}-mainnet-#{version.csv.third}-#{arch}-darwin.pkg"
  name "Daedalus Mainnet"
  desc "Cryptocurrency wallet for ada on the Cardano blockchain"
  homepage "https://daedaluswallet.io/"

  livecheck do
    url "https://update-cardano-mainnet.iohk.io/daedalus-latest-version.json"
    regex(/daedalus[._-]v?(\d+(?:\.\d+)+)[._-](\d+)(?:[._-]mainnet)?[._-](\h+)/i)
    strategy :json do |json, regex|
      match = json.dig("platforms", "macos", arch, "URL")&.match(regex)
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
