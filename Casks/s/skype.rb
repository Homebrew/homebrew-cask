cask "skype" do
  version "8.150.0.125"
  sha256 "5f1180bf8c7b95b62cd5ccb03d81e2137cdf91fd18a73d865e4847702c6e329d"

  url "https://download.skype.com/s4l/download/mac/Skype-#{version}.dmg"
  name "Skype"
  desc "Video chat, voice call and instant messaging application"
  homepage "https://www.skype.com/"

  livecheck do
    url "https://get.skype.com/go/getskype-skypeformac"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "skype@preview"
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
