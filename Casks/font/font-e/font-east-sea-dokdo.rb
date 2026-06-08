cask "font-east-sea-dokdo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eastseadokdo/EastSeaDokdo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "East Sea Dokdo"
  homepage "https://fonts.google.com/specimen/East+Sea+Dokdo"

  font "EastSeaDokdo-Regular.ttf"

  # No zap stanza required
end
