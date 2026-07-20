cask "font-jacquarda-bastarda-9-charted" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jacquardabastarda9charted/JacquardaBastarda9Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jacquarda Bastarda 9 Charted"
  homepage "https://fonts.google.com/specimen/Jacquarda+Bastarda+9+Charted"

  font "JacquardaBastarda9Charted-Regular.ttf"

  # No zap stanza required
end
