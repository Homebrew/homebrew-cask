cask "font-matangi" do
  version "3.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/matangi/Matangi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Matangi"
  homepage "https://fonts.google.com/specimen/Matangi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Matangi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Matangi[wght].ttf"

  # No zap stanza required
end
