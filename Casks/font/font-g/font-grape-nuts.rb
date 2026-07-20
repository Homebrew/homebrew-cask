cask "font-grape-nuts" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/grapenuts/GrapeNuts-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Grape Nuts"
  homepage "https://fonts.google.com/specimen/Grape+Nuts"

  font "GrapeNuts-Regular.ttf"

  # No zap stanza required
end
