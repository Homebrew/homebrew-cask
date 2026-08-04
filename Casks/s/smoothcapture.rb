cask "smoothcapture" do
  version "1.2.57"
  sha256 "ccefdf76a84ca4b07baf8e3fce47d7f4db6dc5c06f2b3581deab7882773b3bcb"

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
