cask "font-jacquarda-bastarda-9" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jacquardabastarda9/JacquardaBastarda9-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jacquarda Bastarda 9"
  homepage "https://fonts.google.com/specimen/Jacquarda+Bastarda+9"

  font "JacquardaBastarda9-Regular.ttf"

  # No zap stanza required
end
