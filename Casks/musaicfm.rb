cask "musaicfm" do
  version "1.2.2"
  sha256 "e694af171183e520f3837b9ff2493398a56bf510a983fe03dc7026bc1cfe1c06"

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  appcast "https://github.com/docterd/MusaicFM/releases.atom"
  name "MusaicFM Screensaver"
  homepage "https://github.com/docterd/MusaicFM"

  screen_saver "MusaicFM.saver"
end
