cask "font-libertinus-serif-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinusserifdisplay/LibertinusSerifDisplay-Regular.ttf"
  name "Libertinus Serif Display"
  homepage "https://github.com/googlefonts/libertinus"

  font "LibertinusSerifDisplay-Regular.ttf"

  # No zap stanza required
end
