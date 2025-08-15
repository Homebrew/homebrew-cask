cask "screenflow" do
  version "10.5"
  sha256 "b5805f52d6bb6e35d7de23c19e1666e4fafdc03b0918e336ea73d081f3bbe10e"

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  name "ScreenFlow"
  desc "Screen recording and video editing software"
  homepage "https://www.telestream.net/screenflow/"

  livecheck do
    url "https://www.telestream.net/updater/screenflow/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ScreenFlow.app"

  zap trash: [
    "~/Library/Application Support/ScreenFlow",
    "~/Library/Caches/net.telestream.screenflow9",
    "~/Library/Cookies/net.telestream.screenflow9.binarycookies",
    "~/Library/Preferences/net.telestream.screenflow.globallibrary.plist",
    "~/Library/Preferences/net.telestream.screenflow9.plist",
    "~/Library/Preferences/WSG985FR47.net.telestream.screenflowhelper.plist",
  ]
end
