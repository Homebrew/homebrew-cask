cask "sfm" do
  version "1.14.6"
  sha256 "1cf30c073e53076006951c6557b014de57163f20a32488861fcb2f07282451f1"

  url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/SFM-#{version}-Universal.pkg"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  depends_on macos: :ventura

  pkg "SFM-#{version}-Universal.pkg"

  uninstall quit:       "io.nekohasekai.sfamt.standalone",
            login_item: "SFM",
            pkgutil:    "io.nekohasekai.sfamt.standalone"

  zap trash: [
    "~/Library/Application Scripts/287TTNZF8L.io.nekohasekai.sfavt",
    "~/Library/Application Scripts/io.nekohasekai.sfamt.standalone.share",
    "~/Library/Containers/io.nekohasekai.sfamt.standalone.share",
    "~/Library/Group Containers/287TTNZF8L.io.nekohasekai.sfavt",
    "~/Library/Preferences/io.nekohasekai.sfavt.standalone.plist",
  ]
end
