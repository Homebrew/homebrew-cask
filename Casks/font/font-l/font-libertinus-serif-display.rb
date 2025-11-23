cask "font-libertinus-serif-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinusserifdisplay/LibertinusSerifDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libertinus Serif Display"
  homepage "https://fonts.google.com/specimen/Libertinus+Serif+Display"

  font "LibertinusSerifDisplay-Regular.ttf"

  # No zap stanza required
end
