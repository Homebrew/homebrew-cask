cask "sfm" do
  version "1.14.5"
  sha256 "107722dc878febe81c49a21044c8c938e082ba5cadd78aedfbeaae61cee803f0"

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
    "~/Library/Group Containers/287TTNZF8L.io.nekohasekai.sfavt",
    "~/Library/Preferences/io.nekohasekai.sfavt.standalone.plist",
  ]
end
