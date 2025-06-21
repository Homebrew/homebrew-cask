cask "font-libertinus-math" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinusmath/LibertinusMath-Regular.ttf"
  name "Libertinus Math"
  homepage "https://github.com/googlefonts/libertinus"

  font "LibertinusMath-Regular.ttf"

  # No zap stanza required
end
