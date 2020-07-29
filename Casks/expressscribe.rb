cask "expressscribe" do
  version :latest
  sha256 :no_check

  url "https://www.nch.com.au/scribe/scribemaci.zip"
  name "Express Scribe Transcription Software"
  homepage "https://www.nch.com.au/scribe/index.html"

  app "ExpressScribe.app"

  uninstall quit:       "com.nchsoftware.expressscribe-free"

  zap trash: [
    "~/Library/Preferences/com.nchsoftware.expressscribe-free.plist",
    "~/Library/Saved Application State/com.nchsoftware.expressscribe-free.savedState",
  ]
end
