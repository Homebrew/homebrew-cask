cask "font-moirai-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/moiraione/MoiraiOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Moirai One"
  homepage "https://fonts.google.com/specimen/Moirai+One"

  font "MoiraiOne-Regular.ttf"

  # No zap stanza required
end
