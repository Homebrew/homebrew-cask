cask "font-vina-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vinasans/VinaSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vina Sans"
  homepage "https://fonts.google.com/specimen/Vina+Sans"

  font "VinaSans-Regular.ttf"

  # No zap stanza required
end
