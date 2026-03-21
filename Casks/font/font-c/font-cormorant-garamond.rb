cask "font-cormorant-garamond" do
  version "4.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cormorantgaramond"
  name "Cormorant Garamond"
  homepage "https://fonts.google.com/specimen/Cormorant+Garamond"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cormorant Garamond",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CormorantGaramond-Italic[wght].ttf"
  font "CormorantGaramond[wght].ttf"

  # No zap stanza required
end
