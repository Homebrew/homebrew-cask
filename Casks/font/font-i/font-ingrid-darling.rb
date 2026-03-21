cask "font-ingrid-darling" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ingriddarling/IngridDarling-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ingrid Darling"
  homepage "https://fonts.google.com/specimen/Ingrid+Darling"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ingrid Darling",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "IngridDarling-Regular.ttf"

  # No zap stanza required
end
