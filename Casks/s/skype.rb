cask "skype" do
  version "8.125.0.201"
  sha256 "1fbb93d7cf2bb5628249986d4951892537c291cfb6b80cb8be4cb8bc7c8852f5"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype"
  desc "Video chat, voice call and instant messaging application"
  homepage "https://www.skype.com/"

  livecheck do
    url "https://get.skype.com/go/getskype-skypeformac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Skype.app"

  zap trash: [
    "~/Library/Address Book Plug-Ins/SkypeABCaller.bundle",
    "~/Library/Address Book Plug-Ins/SkypeABChatter.bundle",
    "~/Library/Address Book Plug-Ins/SkypeABDialer.bundle",
    "~/Library/Address Book Plug-Ins/SkypeABSMS.bundle",
    "~/Library/Application Scripts/com.skype.skype.shareagent",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.skype.skype.sfl*",
    "~/Library/Application Support/CrashReporter/Skype_*.plist",
    "~/Library/Application Support/Microsoft/Skype for Desktop",
    "~/Library/Application Support/Skype Helper",
    "~/Library/Application Support/Skype",
    "~/Library/Application Support/T/SkypeRT",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.skype.skype",
    "~/Library/Caches/com.skype.skype",
    "~/Library/Caches/com.skype.skype.ShipIt",
    "~/Library/Containers/com.skype.skype.shareagent",
    "~/Library/Cookies/com.skype.skype.binarycookies",
    "~/Library/Group Containers/*.com.skype.skype",
    "~/Library/Preferences/ByHost/com.skype.skype.*.plist",
    "~/Library/Preferences/com.skype.skype.plist",
    "~/Library/Preferences/com.skype.skypewifi.plist",
    "~/Library/Saved Application State/com.skype.skype.savedState",
    "~/Library/WebKit/com.skype.skype",
  ]
end
