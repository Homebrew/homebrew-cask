cask "font-ancizar-serif" do
  version "8.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ancizarserif"
  name "Ancizar Serif"
  homepage "https://fonts.google.com/specimen/Ancizar+Serif"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ancizar Serif",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AncizarSerif-Italic[wght].ttf"
  font "AncizarSerif[wght].ttf"

  # No zap stanza required
end
