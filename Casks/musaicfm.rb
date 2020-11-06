cask "musaicfm" do
  version "1.2.1"
  sha256 "52ad4091e48aa3a22504ed914191722c998d11bd4d56ea3a255434863ae045fa"

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  appcast "https://github.com/docterd/MusaicFM/releases.atom"
  name "MusaicFM Screensaver"
  homepage "https://github.com/docterd/MusaicFM"

  screen_saver "MusaicFM.saver"
end
