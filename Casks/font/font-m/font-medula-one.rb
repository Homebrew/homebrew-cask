cask "font-medula-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/medulaone/MedulaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Medula One"
  homepage "https://fonts.google.com/specimen/Medula+One"

  font "MedulaOne-Regular.ttf"

  # No zap stanza required
end
