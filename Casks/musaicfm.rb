cask "musaicfm" do
  version "1.2.3"
  sha256 "e11a1c756d8f6a1c6910acf5fee2fd1e649e30c2fa80d299eeb99369ecc81f3f"

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  name "MusaicFM Screensaver"
  homepage "https://github.com/docterd/MusaicFM"

  screen_saver "MusaicFM.saver"
end
