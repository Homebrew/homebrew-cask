cask "font-libertinus-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinusmono/LibertinusMono-Regular.ttf"
  name "Libertinus Mono"
  homepage "https://github.com/googlefonts/libertinus"

  font "LibertinusMono-Regular.ttf"

  # No zap stanza required
end
