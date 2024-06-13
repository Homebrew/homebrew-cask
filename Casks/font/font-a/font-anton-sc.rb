cask "font-anton-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/antonsc/AntonSC-Regular.ttf"
  name "Anton SC"
  homepage "https://github.com/googlefonts/AntonFont"

  font "AntonSC-Regular.ttf"

  # No zap stanza required
end
