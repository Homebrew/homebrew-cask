cask "font-genos" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/genos"
  name "Genos"
  homepage "https://fonts.google.com/specimen/Genos"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Genos",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Genos-Italic[wght].ttf"
  font "Genos[wght].ttf"

  # No zap stanza required
end
