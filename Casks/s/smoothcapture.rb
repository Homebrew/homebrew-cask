cask "smoothcapture" do
  version "1.2.58"
  sha256 "fb28cdb1f0a1594c5b76620396e0d276957fcb35396c2a7c0b93171e4159f0c9"

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
