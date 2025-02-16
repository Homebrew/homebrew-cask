cask "font-big-shoulders" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshoulders/BigShoulders%5Bopsz%2Cwght%5D.ttf"
  name "Big Shoulders"
  homepage "https://github.com/xotypeco/big_shoulders"

  font "BigShoulders[opsz,wght].ttf"

  # No zap stanza required
end
