cask "screenflow" do
  version "10.0.6,31900"
  sha256 "1aa95db4c97d57e63fb03a3244a9bcc2c5a82ee41552a972d65f21dd5dd218ae"

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
