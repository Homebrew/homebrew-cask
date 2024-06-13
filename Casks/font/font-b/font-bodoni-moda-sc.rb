cask "font-bodoni-moda-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/bodonimodasc"
  name "Bodoni Moda SC"
  homepage "https://github.com/indestructible-type/Bodoni"

  font "BodoniModaSC-Italic[opsz,wght].ttf"
  font "BodoniModaSC[opsz,wght].ttf"

  # No zap stanza required
end
