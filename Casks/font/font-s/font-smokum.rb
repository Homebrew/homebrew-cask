cask "font-smokum" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/smokum/Smokum-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Smokum"
  desc "Western inspired slab-serif font with a little playful swagger to it"
  homepage "https://fonts.google.com/specimen/Smokum"

  font "Smokum-Regular.ttf"

  # No zap stanza required
end
