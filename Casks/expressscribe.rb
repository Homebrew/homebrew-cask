cask "expressscribe" do
  version "11.10"
  sha256 :no_check

  url "https://www.nch.com.au/scribe/scribemaci.zip"
  name "Express Scribe Transcription Software"
  desc "Foot pedal controlled digital transcription audio player"
  homepage "https://www.nch.com.au/scribe/index.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "ExpressScribe.app"

  uninstall quit: "com.nchsoftware.expressscribe-free"

  zap trash: [
    "~/Library/Preferences/com.nchsoftware.expressscribe-free.plist",
    "~/Library/Saved Application State/com.nchsoftware.expressscribe-free.savedState",
  ]
end
