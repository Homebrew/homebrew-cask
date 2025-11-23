cask "font-meddon" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meddon/Meddon.ttf",
      verified: "github.com/google/fonts/"
  name "Meddon"
  homepage "https://fonts.google.com/specimen/Meddon"

  font "Meddon.ttf"

  # No zap stanza required
end
