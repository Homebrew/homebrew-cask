cask "font-keania-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/keaniaone/KeaniaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Keania One"
  homepage "https://fonts.google.com/specimen/Keania+One"

  font "KeaniaOne-Regular.ttf"

  # No zap stanza required
end
