cask "font-mooli" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mooli/Mooli-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mooli"
  homepage "https://fonts.google.com/specimen/Mooli"

  font "Mooli-Regular.ttf"

  # No zap stanza required
end
