cask "playdate-mirror" do
  version "1.3.0"
  sha256 "2a8207105378d7517948b3c2030b66014dcd0ccce257916ab65576bfd7250eff"

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
  depends_on macos: ">= :big_sur"

  app "Mirror.app"

  uninstall quit: "com.panic.Mirror"

  zap trash: [
    "~/Library/Preferences/com.panic.Mirror.plist",
    "~/Library/Preferences/Mirror Preferences",
    "~/Library/Saved Application State/com.panic.Mirror.savedState",
  ]
end
