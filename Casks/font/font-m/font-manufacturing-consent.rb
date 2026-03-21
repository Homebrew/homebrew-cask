cask "font-manufacturing-consent" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/manufacturingconsent/ManufacturingConsent-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Manufacturing Consent"
  homepage "https://fonts.google.com/specimen/Manufacturing+Consent"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Manufacturing Consent",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ManufacturingConsent-Regular.ttf"

  # No zap stanza required
end
