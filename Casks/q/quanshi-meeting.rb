cask "quanshi-meeting" do
  arch arm: "arm64", intel: "x86_64"
  version "6.26.25011701"

  sha256 arm:   "be040b0d9d8f951a26173bcee7db0c24f820b77b194c00e7ee6f393cd208b215",
         intel: "f20f091a833ba996c4e4aafd84cde1a1070181c4f33e269f546a2c7410985e9f"

  url "https://dle.quanshi.com/onemeeting/download/auto/mac/#{version}/#{arch}/G-Net_MeetNow.pkg"
  name "Quanshi Meeting"
  name "全时云会议"
  desc "Cloud video conferencing"
  homepage "https://www.quanshi.com"

  # Documentation: https://docs.brew.sh/Brew-Livecheck

  livecheck do
    url "https://dle.quanshi.com/onemeeting/download/v2/G-Net_MeetNow.pkg"
    strategy :extract_plist
  end


  pkg "G-Net_MeetNow.pkg"

  uninstall signal:    ["KILL", "TangMeeting"],
            delete:    [
              "/Applications/TangMeeting.app",
            ]

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
    zap trash: [
    "~/Library/Logs/Quanshi",
    "~/Library/LaunchDaemons/com.quanshi.daemonsvcd.plist",
    "~/Library/LaunchAgents/com.quanshi.daemonapp.plist",
    "~/Library/Preferences/com.gnet.uc.mac.helper.plist",
  ]

end
