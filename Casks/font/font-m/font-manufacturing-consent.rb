cask "font-manufacturing-consent" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/manufacturingconsent/ManufacturingConsent-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Manufacturing Consent"
  homepage "https://fonts.google.com/specimen/Manufacturing+Consent"

  font "ManufacturingConsent-Regular.ttf"

  # No zap stanza required
end
