cask "font-marko-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/markoone/MarkoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Marko One"
  homepage "https://fonts.google.com/specimen/Marko+One"

  font "MarkoOne-Regular.ttf"

  # No zap stanza required
end
