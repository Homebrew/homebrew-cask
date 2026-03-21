cask "font-advent-pro" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/adventpro"
  name "Advent Pro"
  homepage "https://fonts.google.com/specimen/Advent+Pro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Advent Pro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AdventPro-Italic[wdth,wght].ttf"
  font "AdventPro[wdth,wght].ttf"

  # No zap stanza required
end
