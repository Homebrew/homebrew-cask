cask "musaicfm" do
  version "1.2"
  sha256 "092137217d5a9f24abfede5d969d002bdd5e2405c331496cc0e7fb73ed473207"

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  appcast "https://github.com/docterd/MusaicFM/releases.atom"
  name "MusaicFM Screensaver"
  homepage "https://github.com/docterd/MusaicFM"

  screen_saver "MusaicFM.saver"
end
