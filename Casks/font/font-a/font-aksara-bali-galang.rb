cask "font-aksara-bali-galang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aksarabaligalang/AksaraBaliGalang-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aksara Bali Galang"
  homepage "https://fonts.google.com/specimen/Aksara+Bali+Galang"

  font "AksaraBaliGalang-Regular.ttf"

  # No zap stanza required
end
