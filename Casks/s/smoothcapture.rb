cask "smoothcapture" do
  version "1.2.56"
  sha256 "cf5f7cdf6f83bb5015c9a5bd898320bdd838e53b8336b5147b84f35800734e95"

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
