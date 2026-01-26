cask "ecamm-live" do
  version "4.4.14"
  sha256 :no_check

  url "https://downloads.ecamm.com/EcammLive.zip"
  name "Ecamm Live"
  desc "Live streaming & video production studio"
  homepage "https://www.ecamm.com/"

  livecheck do
    url "https://www.ecamm.com/appcasts/ecammlive.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  # The url is unversioned, but the download returns an app directory with a version number
  rename "Ecamm Live v#{version}", "Ecamm Live"

  app "Ecamm Live/Ecamm Live.app"

  uninstall delete: [
              "/Library/Application Support/EcammLive/EcammLiveAudioXPCHelper.xpc",
              "/Library/LaunchDaemons/com.ecamm.EcammAudioXPCHelper.plist",
            ],
            rmdir:  "/Library/Application Support/EcammLive"

  zap trash: [
    "~/Library/Application Support/com.ecamm.EcammLive",
    "~/Library/Application Support/EcammLive",
    "~/Library/HTTPStorages/com.ecamm.EcammLive",
    "~/Library/HTTPStorages/com.ecamm.EcammLive.binarycookies",
    "~/Library/Preferences/com.ecamm.EcammLive.plist",
    "~/Library/WebKit/com.ecamm.EcammLive",
  ]
end
