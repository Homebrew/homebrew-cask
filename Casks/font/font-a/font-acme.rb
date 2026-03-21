cask "font-acme" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/acme/Acme-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Acme"
  homepage "https://fonts.google.com/specimen/Acme"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Acme",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Acme-Regular.ttf"

  # No zap stanza required
end
