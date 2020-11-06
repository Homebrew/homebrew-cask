cask "epoch-flip-clock" do
  version "0.0.5"
  sha256 "90fa0ace6b13b47a12dc89a56c33d9add1140fecbd6bdd0c905d396fa093b02d"

  url "https://github.com/chrstphrknwtn/epoch-flip-clock-screensaver/releases/download/#{version}/Epoch.Flip.Clock.#{version}.saver.zip"
  appcast "https://github.com/chrstphrknwtn/epoch-flip-clock-screensaver/releases.atom"
  name "Epoch Flip Clock Screensaver"
  homepage "https://github.com/chrstphrknwtn/epoch-flip-clock-screensaver/"

  screen_saver "Epoch Flip Clock.saver"
end
