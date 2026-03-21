cask "font-radio-canada" do
  version "2.104"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/radiocanada"
  name "Radio Canada"
  homepage "https://fonts.google.com/specimen/Radio+Canada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Radio Canada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RadioCanada-Italic[wdth,wght].ttf"
  font "RadioCanada[wdth,wght].ttf"

  # No zap stanza required
end
