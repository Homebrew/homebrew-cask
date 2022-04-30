cask "playdate-mirror" do
  version "1.0.0"
  sha256 "690137066bd7059b55b7e5717994569e64814dbd5b06e7f19a181f59e0268a0b"

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
