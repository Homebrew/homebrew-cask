cask "font-ewert" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ewert/Ewert-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ewert"
  homepage "https://fonts.google.com/specimen/Ewert"

  font "Ewert-Regular.ttf"

  # No zap stanza required
end
