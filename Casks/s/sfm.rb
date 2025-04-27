cask "sfm" do
  version "1.11.9"
  sha256 "eff8ce96930a9cbd0c49e38a2a8cb976c4d0499917442936ce90f0834a937929"

  url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/SFM-#{version}-universal.dmg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  depends_on macos: ">= :ventura"

  app "SFM.app"

  uninstall quit:       "io.nekohasekai.sfa.independent",
            login_item: "SFM"

  zap trash: "~/Library/Group Containers/group.io.nekohasekai.sfa"
end
