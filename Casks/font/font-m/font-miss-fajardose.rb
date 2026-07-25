cask "font-miss-fajardose" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/missfajardose/MissFajardose-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Miss Fajardose"
  homepage "https://fonts.google.com/specimen/Miss+Fajardose"

  font "MissFajardose-Regular.ttf"

  # No zap stanza required
end
