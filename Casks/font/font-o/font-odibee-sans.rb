cask "font-odibee-sans" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/odibeesans/OdibeeSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Odibee Sans"
  homepage "https://fonts.google.com/specimen/Odibee+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Odibee Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OdibeeSans-Regular.ttf"

  # No zap stanza required
end
