cask "sfm" do
  version "1.14.0"
  sha256 "531de8042129d06ff89a846ec5181b56a8d62414b87584826c2b23fb0a0a813e"

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
