cask "font-nerko-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nerkoone/NerkoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nerko One"
  homepage "https://fonts.google.com/specimen/Nerko+One"

  font "NerkoOne-Regular.ttf"

  # No zap stanza required
end
