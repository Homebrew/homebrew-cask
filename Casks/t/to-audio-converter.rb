cask "to-audio-converter" do
  version "1.0.19,1215"
  sha256 :no_check

  url "https://amvidia.com/downloads/to-audio-converter-mac.dmg"
  name "To Audio Converter"
  desc "Audio converter"
  homepage "https://amvidia.com/to-audio-converter"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "To Audio Converter.app"

  zap trash: [
    "~/Library/Application Scripts/com.amvidia.To-Audio-Converter-FS",
    "~/Library/Containers/To Audio Converter",
    "~/Library/Saved Application State/com.amvidia.To-Audio-Converter-FS.savedState",
  ]
end
