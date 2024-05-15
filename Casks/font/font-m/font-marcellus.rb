cask "font-marcellus" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/marcellus/Marcellus-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Marcellus"
  homepage "https://fonts.google.com/specimen/Marcellus"

  font "Marcellus-Regular.ttf"

  # No zap stanza required
end
