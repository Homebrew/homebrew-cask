cask "to-audio-converter" do
  version "2.0.0,1327"
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

  depends_on macos: ">= :high_sierra"

  app "To Audio Converter #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.amvidia.To-Audio-Converter-FS",
    "~/Library/Containers/To Audio Converter",
    "~/Library/Saved Application State/com.amvidia.To-Audio-Converter-FS.savedState",
  ]
end
