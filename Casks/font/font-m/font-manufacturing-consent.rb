cask "font-manufacturing-consent" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/manufacturingconsent/ManufacturingConsent-Regular.ttf"
  name "Manufacturing Consent"
  homepage "https://github.com/googlefonts/manufacturing-consent-font"

  font "ManufacturingConsent-Regular.ttf"

  # No zap stanza required
end
