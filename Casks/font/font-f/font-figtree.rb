cask "font-figtree" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/figtree"
  name "Figtree"
  homepage "https://fonts.google.com/specimen/Figtree"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Figtree",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Figtree-Italic[wght].ttf"
  font "Figtree[wght].ttf"

  # No zap stanza required
end
