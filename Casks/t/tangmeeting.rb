cask "tangmeeting" do
  arch arm: "arm64", intel: "x86_64"

  version "6.26.25011701"
  sha256 arm:   "2a33c2c15fd420a0b4a0424f626fd994cbfa791a85f5656d91d7234ce23eba2b",
         intel: "f20f091a833ba996c4e4aafd84cde1a1070181c4f33e269f546a2c7410985e9f"

  url "https://dle.quanshi.com/onemeeting/download/auto/mac/#{version}/#{arch}/G-Net_MeetNow.pkg"
  name "Quanshi Meeting"
  name "全时云会议"
  desc "Cloud video conferencing"
  homepage "https://www.quanshi.com/"

  livecheck do
    url "https://dle.quanshi.com/onemeeting/download/v2/G-Net_MeetNow.pkg"
    strategy :extract_plist
  end

  pkg "G-Net_MeetNow.pkg"

  uninstall pkgutil: "com.quanshi.pkg.MeetNowMac"

  zap trash: [
    "~/Library/LaunchAgents/com.quanshi.daemonapp.plist",
    "~/Library/LaunchDaemons/com.quanshi.daemonsvcd.plist",
    "~/Library/Logs/Quanshi",
    "~/Library/Preferences/com.gnet.uc.mac.helper.plist",
  ]
end
