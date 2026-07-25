cask "font-darumadrop-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/darumadropone/DarumadropOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Darumadrop One"
  homepage "https://fonts.google.com/specimen/Darumadrop+One"

  font "DarumadropOne-Regular.ttf"

  # No zap stanza required
end
