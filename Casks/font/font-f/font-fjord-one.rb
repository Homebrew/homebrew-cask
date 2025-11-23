cask "font-fjord-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fjordone/FjordOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fjord One"
  homepage "https://fonts.google.com/specimen/Fjord+One"

  font "FjordOne-Regular.ttf"

  # No zap stanza required
end
