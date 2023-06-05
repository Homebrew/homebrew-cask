cask "elgato-video-capture" do
  version "2.0.7.8720"
  sha256 "dee13035de81f5ce841ae2c00d90f5b025f035950e3f6b5a9aad09199115ff80"

  url "https://edge.elgato.com/video-capture/macos/#{version.major_minor_patch}/Video_Capture_#{version}.zip"
  name "Elgato Video Capture"
  desc "Capture video from analog sources"
  homepage "https://www.elgato.com/en/video-capture/"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/Video[._-]Capture[._-]v?(\d+(?:[._]\d+)+)\.zip"}i)
  end

  depends_on macos: ">= :el_capitan"

  app "Elgato Video Capture.app"

  zap trash: [
    "~/Library/Application Support/Elgato Video Capture",
    "~/Library/Application Support/com.elgato.VideoCapture",
    "~/Library/Caches/com.elgato.VideoCapture",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.elgato.VideoCapture",
    "~/Library/Logs/elgato.log",
    "~/Library/Preferences/com.elgato.VideoCapture.plist",
  ]
end
