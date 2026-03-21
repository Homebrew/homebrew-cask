cask "font-galdeano" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/galdeano/Galdeano-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Galdeano"
  homepage "https://fonts.google.com/specimen/Galdeano"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Galdeano",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Galdeano-Regular.ttf"

  # No zap stanza required
end
