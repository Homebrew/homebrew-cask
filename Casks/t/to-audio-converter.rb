cask "to-audio-converter" do
  version "2.0.1,1346"
  sha256 :no_check

  url "https://amvidia.com/downloads/to-audio-converter-mac.dmg"
  name "To Audio Converter"
  desc "Audio converter"
  homepage "https://amvidia.com/to-audio-converter"

  # The upstream website no longer provides meaningful version information.
  livecheck do
    url :url
    strategy :extract_plist
  end

  # The url is unversioned, but the download returns an app with a version number
  rename "To Audio Converter*.app", "To Audio Converter.app"

  app "To Audio Converter.app"

  zap trash: [
    "~/Library/Application Scripts/com.amvidia.To-Audio-Converter-FS",
    "~/Library/Containers/To Audio Converter",
    "~/Library/Saved Application State/com.amvidia.To-Audio-Converter-FS.savedState",
  ]
end
