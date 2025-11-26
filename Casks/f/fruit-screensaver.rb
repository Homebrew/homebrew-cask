cask "fruit-screensaver" do
  version "1.3.2"
  sha256 "f5dbff457e6bb3d483fa17413b964ec54674b42e32f294478699f86c5a1b9200"

  url "https://github.com/Corkscrews/fruit/releases/download/#{version}/Fruit.saver.tar.gz"
  name "Fruit Screensaver"
  desc "Screensaver of the vintage Apple logo"
  homepage "https://github.com/Corkscrews/fruit"

  screen_saver "Fruit.saver"

  # No zap stanza required
end
