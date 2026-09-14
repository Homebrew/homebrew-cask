cask "smoothcapture" do
  version "1.2.62"
  sha256 "a10a59e46f998333da24fe58869ccfecd2d96a04d187cd34ce78fe5fbb8a7390"

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
