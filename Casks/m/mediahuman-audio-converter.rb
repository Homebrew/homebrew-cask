cask "mediahuman-audio-converter" do
  arch arm: "-arm"

  version "2.2.4"
  sha256 :no_check

  url "https://www.mediahuman.com/files/MHAudioConverter#{arch}.dmg"
  name "MediaHuman Audio Converter"
  desc "Audio converter"
  homepage "https://www.mediahuman.com/audio-converter/"

  livecheck do
    url :homepage
    regex(/"softwareVersion">\s*(\d+(?:\.\d+)+)[\s<]/i)
  end

  app "MediaHuman Audio Converter.app"

  zap trash: [
    "~/Library/Preferences/com.mediahuman.Audio Converter.plist",
    "~/Library/Preferences/com.mediahuman.plist",
    "~/Library/Saved Application State/com.mediahuman.Audio Converter.savedState",
  ]
end
