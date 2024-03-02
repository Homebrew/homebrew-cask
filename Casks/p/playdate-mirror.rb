cask "playdate-mirror" do
  version "1.2.0"
  sha256 "fe4f6ee254ed54974a358540d5af1afeb38f7d8d0a1c8df21aef3215239d4e54"

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
  depends_on macos: ">= :catalina"

  app "Mirror.app"

  uninstall quit: "com.panic.Mirror"

  zap trash: [
    "~/Library/Preferences/com.panic.Mirror.plist",
    "~/Library/Preferences/Mirror Preferences",
    "~/Library/Saved Application State/com.panic.Mirror.savedState",
  ]
end
