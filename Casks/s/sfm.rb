cask "sfm" do
  version "1.12.3"
  sha256 "067bd249e185c79110b72c8f1fd20824b385bf256c76d65624617c8d2ee70a9a"

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
