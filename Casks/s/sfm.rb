cask "sfm" do
  version "1.11.10"
  sha256 "a96f5ede3d4c81172dc0a11b7d3b07478a5758b090c16fef45400e1e96d15f9f"

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
