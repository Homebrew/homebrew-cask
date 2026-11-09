cask "font-ingrid-darling" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ingriddarling/IngridDarling-Regular.ttf"
  name "Ingrid Darling"
  homepage "https://fonts.google.com/specimen/Ingrid+Darling"

  font "IngridDarling-Regular.ttf"

  zap :not_required
end
