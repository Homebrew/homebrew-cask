cask "font-iceberg" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/iceberg/Iceberg-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Iceberg"
  homepage "https://fonts.google.com/specimen/Iceberg"

  font "Iceberg-Regular.ttf"

  # No zap stanza required
end
