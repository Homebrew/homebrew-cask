cask "sfm" do
  version "1.13.0"
  sha256 "a7d90cf8e33e628c954e142846c44b5e017878dd5bb5df72b5a153b57745554e"

  url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/SFM-#{version}-Universal.pkg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  pkg "SFM-#{version}-Universal.pkg"

  uninstall quit:       "io.nekohasekai.sfa.independent",
            login_item: "SFM",
            pkgutil:    "io.nekohasekai.sfavt.standalone"

  zap trash: "~/Library/Group Containers/group.io.nekohasekai.sfa"
end
