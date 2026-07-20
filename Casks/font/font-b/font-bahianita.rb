cask "font-bahianita" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bahianita/Bahianita-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bahianita"
  homepage "https://fonts.google.com/specimen/Bahianita"

  font "Bahianita-Regular.ttf"

  # No zap stanza required
end
