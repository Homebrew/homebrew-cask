cask "font-libertinus-math" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinusmath/LibertinusMath-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libertinus Math"
  homepage "https://fonts.google.com/specimen/Libertinus+Math"

  font "LibertinusMath-Regular.ttf"

  # No zap stanza required
end
