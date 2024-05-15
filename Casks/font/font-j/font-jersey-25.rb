cask "font-jersey-25" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jersey25/Jersey25-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jersey 25"
  homepage "https://fonts.google.com/specimen/Jersey+25"

  font "Jersey25-Regular.ttf"

  # No zap stanza required
end
