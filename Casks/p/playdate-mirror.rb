cask "playdate-mirror" do
  version "1.4.0"
  sha256 "9a963fc8769e4e81630347467787fff2d9c863f6efffc57c0aa4c8973867167e"

  url "https://download-cdn.panic.com/mirror/Mirror-#{version}.zip",
      verified: "download-cdn.panic.com/mirror/"
  name "Playdate Mirror"
  desc "Application that streams gameplay audio and video from your Playdate"
  homepage "https://play.date/mirror"

  livecheck do
    url "https://download.panic.com/mirror/Mirror-latest.zip"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Mirror.app"

  uninstall quit: "com.panic.Mirror"

  zap trash: [
    "~/Library/Preferences/com.panic.Mirror.plist",
    "~/Library/Preferences/Mirror Preferences",
    "~/Library/Saved Application State/com.panic.Mirror.savedState",
  ]
end
