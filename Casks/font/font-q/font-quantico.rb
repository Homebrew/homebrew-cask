cask "font-quantico" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/quantico"
  name "Quantico"
  homepage "https://fonts.google.com/specimen/Quantico"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Quantico",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Quantico-Bold.ttf"
  font "Quantico-BoldItalic.ttf"
  font "Quantico-Italic.ttf"
  font "Quantico-Regular.ttf"

  # No zap stanza required
end
