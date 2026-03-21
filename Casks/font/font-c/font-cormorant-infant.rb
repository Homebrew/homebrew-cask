cask "font-cormorant-infant" do
  version "4.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cormorantinfant"
  name "Cormorant Infant"
  homepage "https://fonts.google.com/specimen/Cormorant+Infant"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cormorant Infant",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CormorantInfant-Italic[wght].ttf"
  font "CormorantInfant[wght].ttf"

  # No zap stanza required
end
