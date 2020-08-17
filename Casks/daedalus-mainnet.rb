cask "daedalus-mainnet" do
  version "2.1.0,14079"
  sha256 "c541091d7368359eb7046e36525a03949a391e81455c879f94fb02d53e5c2620"

  # update-cardano-mainnet.iohk.io/ was verified as official when first introduced to the cask
  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg"
  name "Daedalus Mainnet"
  homepage "https://daedaluswallet.io/"

  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg"

  uninstall pkgutil: "org.Daedalusmainnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Mainnet",
    "~/Library/Preferences/com.electron.daedalus-mainnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-mainnet.savedState",
  ]
end
