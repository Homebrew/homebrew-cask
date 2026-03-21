cask "font-exo" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/exo"
  name "Exo"
  homepage "https://fonts.google.com/specimen/Exo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Exo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Exo-Italic[wght].ttf"
  font "Exo[wght].ttf"

  # No zap stanza required
end
