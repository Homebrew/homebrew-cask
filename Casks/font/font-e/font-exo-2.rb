cask "font-exo-2" do
  version "2.010"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/exo2"
  name "Exo 2"
  homepage "https://fonts.google.com/specimen/Exo+2"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Exo 2",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Exo2-Italic[wght].ttf"
  font "Exo2[wght].ttf"

  # No zap stanza required
end
