cask "playdate-mirror" do
  version "1.1.0"
  sha256 "0536af36fa47727f8b7c08062c0ade8ff1c4fd84111577aedd4448a6dbf52b05"

  url "https://download-keycdn.panic.com/mirror/Mirror-#{version}.zip",
      verified: "download-keycdn.panic.com/mirror/"
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
    "~/Library/Saved Application State/com.panic.Mirror.savedState",
    "~/Library/Preferences/com.panic.Mirror.plist",
    "~/Library/Preferences/Mirror Preferences",
  ]
end
