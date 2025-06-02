cask "fruit-screensaver" do
  version "1.3.0"
  sha256 "c020eadf79270f2f846b67176a43bde8a113b8b91e9cd770ad03c8d65a427c49"

  url "https://github.com/Corkscrews/fruit/releases/download/#{version}/Fruit.saver.tar.gz"
  name "Fruit Screensaver"
  desc "Screensaver of the vintage Apple logo"
  homepage "https://github.com/Corkscrews/fruit"

  screen_saver "Fruit.saver"

  # No zap stanza required
end
