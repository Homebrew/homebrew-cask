cask "font-yellowtail" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/yellowtail/Yellowtail-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yellowtail"
  desc "Old school flavored flat brush script typeface of medium weight"
  homepage "https://fonts.google.com/specimen/Yellowtail"

  font "Yellowtail-Regular.ttf"

  # No zap stanza required
end
