cask "smoothcapture" do
  version "1.3.0"
  sha256 "1ef345f53f7e5d1dec6dc779a9fbeb21653a60bf0edafb73f946c8654622a82f"

  url "https://download.smoothcapture.app/SmoothCapture-#{version}.dmg"
  name "Smooth Capture"
  name "SmoothCapture"
  desc "Screen recorder and video editor"
  homepage "https://www.smoothcapture.app/"

  livecheck do
    url "https://download.smoothcapture.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "SmoothCapture.app"

  zap trash: [
    "~/Library/Application Support/com.vu.SmoothCapture",
    "~/Library/Caches/com.vu.SmoothCapture",
    "~/Library/HTTPStorages/com.vu.SmoothCapture",
    "~/Library/HTTPStorages/com.vu.SmoothCapture.binarycookies",
    "~/Library/Preferences/com.vu.SmoothCapture.plist",
    "~/Library/WebKit/com.vu.SmoothCapture",
  ]
end
