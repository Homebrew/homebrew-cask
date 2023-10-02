cask "sfm" do
  version "1.5.0"
  sha256 "ffe2928f0e29803afb5a7ac7d91e9bf75493e8e1d72253e678cdd77eafb40f99"

  url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/SFM-#{version}-universal.zip",
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
