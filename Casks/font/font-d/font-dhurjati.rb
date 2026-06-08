cask "font-dhurjati" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dhurjati/Dhurjati-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dhurjati"
  homepage "https://fonts.google.com/specimen/Dhurjati"

  font "Dhurjati-Regular.ttf"

  # No zap stanza required
end
