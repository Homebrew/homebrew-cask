cask "screenflow" do
  version "10.0.5,31892"
  sha256 "28a0ddec6dc152f31195c2876cd52087b192643c7235f71afed305fc89753f35"

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
