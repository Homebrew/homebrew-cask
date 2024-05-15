cask "font-sigmar-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sigmarone/SigmarOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sigmar One"
  homepage "https://fonts.google.com/specimen/Sigmar+One"

  font "SigmarOne-Regular.ttf"

  # No zap stanza required
end
