cask "font-rum-raisin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rumraisin/RumRaisin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rum Raisin"
  homepage "https://fonts.google.com/specimen/Rum+Raisin"

  font "RumRaisin-Regular.ttf"

  # No zap stanza required
end
