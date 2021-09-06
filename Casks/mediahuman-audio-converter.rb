cask "mediahuman-audio-converter" do
  version "1.9.8"
  sha256 :no_check

  url "https://www.mediahuman.com/download/MHAudioConverter.dmg"
  name "MediaHuman Audio Converter"
  desc "Audio converter"
  homepage "https://www.mediahuman.com/audio-converter/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/"softwareVersion">(\d+(?:\.\d+)*)/i)
  end

  app "MediaHuman Audio Converter.app"
end
