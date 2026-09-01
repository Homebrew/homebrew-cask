cask "daedalus-mainnet" do
  arch arm: "aarch64", intel: "x86_64"

  version "11.3.0,86724,adf90b52e"
  sha256 arm:   "4754a30b2a0e9926db61ded865f72ac52f76d0ce49845e080de19d9358396882",
         intel: "0f3d81f72912c3b22a72fcb0930eaab0ab8a1aa586ba85a279d8378289ce37b8"

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
