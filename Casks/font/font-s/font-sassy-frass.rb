cask "font-sassy-frass" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sassyfrass/SassyFrass-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sassy Frass"
  homepage "https://fonts.google.com/specimen/Sassy+Frass"

  font "SassyFrass-Regular.ttf"

  # No zap stanza required
end
