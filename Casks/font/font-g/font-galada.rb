cask "font-galada" do
  version "1.261"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/galada/Galada-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Galada"
  homepage "https://fonts.google.com/specimen/Galada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Galada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Galada-Regular.ttf"

  # No zap stanza required
end
