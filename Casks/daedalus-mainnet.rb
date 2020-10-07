cask "daedalus-mainnet" do
  version "2.3.0,14606"
  sha256 "99bb18499817fa0174127fdd6ffe20e41a97ba9ce6b7f56f0fc24fcbf669e64f"

  # update-cardano-mainnet.iohk.io/ was verified as official when first introduced to the cask
  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg"
  appcast "https://update-cardano-mainnet.iohk.io/daedalus-latest-version.json"
  name "Daedalus Mainnet"
  desc "Cryptocurrency wallet for ada on the Cardano blockchain"
  homepage "https://daedaluswallet.io/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg"

  uninstall pkgutil: "org.Daedalusmainnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Mainnet",
    "~/Library/Preferences/com.electron.daedalus-mainnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-mainnet.savedState",
  ]
end
