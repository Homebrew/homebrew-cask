cask "font-platypi" do
  version "1.200"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/platypi"
  name "Platypi"
  homepage "https://fonts.google.com/specimen/Platypi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Platypi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Platypi-Italic[wght].ttf"
  font "Platypi[wght].ttf"

  # No zap stanza required
end
