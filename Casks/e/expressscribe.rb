cask "expressscribe" do
  version "15.11"
  sha256 :no_check

  url "https://www.nch.com.au/scribe/scribemaci.zip"
  name "Express Scribe Transcription Software"
  desc "Foot pedal controlled digital transcription audio player"
  homepage "https://www.nch.com.au/scribe/index.html"

  livecheck do
    url "https://www.nch.com.au/scribe/versions.html"
    regex(/Version\s+v?(\d+(?:\.\d+)+)[^>]*>\s*macOS/im)
  end

  depends_on :macos

  app "ExpressScribe.app"

  uninstall quit: [
    "com.nchsoftware.expressscribe-free",
    "com.nchsoftware.expressscribefree",
  ]

  zap trash: [
    "~/Library/Preferences/ByHost/com.nchsoftware.expressscribe.*.plist",
    "~/Library/Preferences/com.nchsoftware.expressscribe-free.plist",
    "~/Library/Saved Application State/com.nchsoftware.expressscribe-free.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
