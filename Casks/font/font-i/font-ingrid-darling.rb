cask "font-ingrid-darling" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ingriddarling/IngridDarling-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ingrid Darling"
  desc "Based on a cursive hand writing style that has a playful, whimsical appeal"
  homepage "https://fonts.google.com/specimen/Ingrid+Darling"

  font "IngridDarling-Regular.ttf"

  # No zap stanza required
end
