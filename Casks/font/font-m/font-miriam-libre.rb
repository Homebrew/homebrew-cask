cask "font-miriam-libre" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/miriamlibre/MiriamLibre%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Miriam Libre"
  homepage "https://fonts.google.com/specimen/Miriam+Libre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Miriam Libre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MiriamLibre[wght].ttf"

  # No zap stanza required
end
