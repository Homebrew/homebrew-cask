cask "screenflow" do
  version "10.0.8,31930"
  sha256 "b8c3f731f81a2ea915ffbcd53aeaacf263908f44053acaca922faf1f40fb0f5f"

  url "https://www.telestream.net/download-files/screenflow/#{version.csv.first.major_minor.dots_to_hyphens}/ScreenFlow-#{version.csv.first}.dmg"
  name "ScreenFlow"
  desc "Screen recording and video editing software"
  homepage "https://www.telestream.net/screenflow/"

  livecheck do
    url "https://www.telestream.net/updater/screenflow/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ScreenFlow.app"

  zap trash: [
    "~/Library/Application Support/ScreenFlow",
    "~/Library/Caches/net.telestream.screenflow9",
    "~/Library/Cookies/net.telestream.screenflow9.binarycookies",
    "~/Library/Preferences/WSG985FR47.net.telestream.screenflowhelper.plist",
    "~/Library/Preferences/net.telestream.screenflow.globallibrary.plist",
    "~/Library/Preferences/net.telestream.screenflow9.plist",
  ]
end
