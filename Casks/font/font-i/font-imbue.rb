cask "font-imbue" do
  version "1.102"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/imbue/Imbue%5Bopsz%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Imbue"
  homepage "https://fonts.google.com/specimen/Imbue"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Imbue",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Imbue[opsz,wght].ttf"

  # No zap stanza required
end
