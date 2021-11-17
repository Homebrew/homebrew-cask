cask "musaicfm" do
  version "1.2.4"
  sha256 "f9ca16dc22bbd3ff0f6955c6e8885674b455837bfc384329f9587fbc16cb7960"

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  name "MusaicFM Screensaver"
  desc "Screensaver displaying artwork based on Spotify or Last.fm profile data"
  homepage "https://github.com/docterd/MusaicFM"

  screen_saver "MusaicFM.saver"
end
