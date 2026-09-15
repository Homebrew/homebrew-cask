cask "sfm" do
  version "1.14.1"
  sha256 "00a3e70684535aabe19a73d4850e0b63067224676bbf5ffae0a0eb3a2e034b79"

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
