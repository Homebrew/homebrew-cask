cask "toaudioconverter" do
  version "1.0.18,1173"
  sha256 :no_check

  url "https://amvidia.com/download-to-audio-converter-mac.dmg.zip"
  name "To Audio Converter"
  desc "Convert over 200 audio formats with a simplified interface"
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
