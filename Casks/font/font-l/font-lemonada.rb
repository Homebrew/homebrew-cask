cask "font-lemonada" do
  version "4.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lemonada/Lemonada%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lemonada"
  homepage "https://fonts.google.com/specimen/Lemonada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lemonada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Lemonada[wght].ttf"

  # No zap stanza required
end
