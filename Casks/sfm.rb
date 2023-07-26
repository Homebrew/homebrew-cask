cask "sfm" do
  version "1.3.4"
  sha256 "751456e146155f959568403ffd186524e6770e5e19f0780fc97ed664bcfc7122"

  url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/SFM-#{version}-universal.zip",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  depends_on macos: ">= :ventura"

  app "SFM.app"

  uninstall quit: "io.nekohasekai.sfa.independent", login_item: "SFM"

  zap trash: [
    "~/Library/Group Containers/group.io.nekohasekai.sfa",
  ]
end
