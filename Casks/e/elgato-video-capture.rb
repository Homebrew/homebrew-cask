cask "elgato-video-capture" do
  version "2.0.9.8722"
  sha256 "f101b8c948025c057c57795af38c7c38e73e32c8befbdeece8c5a30d2fe2f57c"

  url "https://edge.elgato.com/video-capture/macos/#{version.major_minor_patch}/Video_Capture_#{version}.zip"
  name "Elgato Video Capture"
  desc "Capture video from analogue sources"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates-origin.elgato.com/mac/video-capture-update/evcm-update-rss/?lang=English"
    regex(/Video[._-]Capture[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :el_capitan"

  app "Elgato Video Capture.app"

  zap trash: [
    "~/Library/Application Support/com.elgato.VideoCapture",
    "~/Library/Application Support/Elgato Video Capture",
    "~/Library/Caches/com.elgato.VideoCapture",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.elgato.VideoCapture",
    "~/Library/Logs/elgato.log",
    "~/Library/Preferences/com.elgato.VideoCapture.plist",
  ]
end
