cask "fruit-screensaver" do
  version "1.3.3"
  sha256 "305b30c8ad78113da6f1031e01aae9b8e12eb79c1189afc6425db1d44ef72ef9"

  url "https://github.com/Corkscrews/fruit/releases/download/#{version}/Fruit.saver.tar.gz"
  name "Fruit Screensaver"
  desc "Screensaver of the vintage Apple logo"
  homepage "https://github.com/Corkscrews/fruit"

  screen_saver "Fruit.saver"

  # No zap stanza required
end
