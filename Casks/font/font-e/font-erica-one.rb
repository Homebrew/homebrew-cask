cask "font-erica-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ericaone/EricaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Erica One"
  homepage "https://fonts.google.com/specimen/Erica+One"

  font "EricaOne-Regular.ttf"

  # No zap stanza required
end
