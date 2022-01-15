cask "screenflow" do
  version "10.0.3,31849"
  sha256 "5e2dfabe79f3a76324baff557e2022da85014ba2a8dee7dbce43225aa3e5835d"

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
