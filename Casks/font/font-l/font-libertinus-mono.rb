cask "font-libertinus-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinusmono/LibertinusMono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libertinus Mono"
  homepage "https://fonts.google.com/specimen/Libertinus+Mono"

  font "LibertinusMono-Regular.ttf"

  # No zap stanza required
end
