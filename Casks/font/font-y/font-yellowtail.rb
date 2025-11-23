cask "font-yellowtail" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/yellowtail/Yellowtail-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yellowtail"
  homepage "https://fonts.google.com/specimen/Yellowtail"

  font "Yellowtail-Regular.ttf"

  # No zap stanza required
end
