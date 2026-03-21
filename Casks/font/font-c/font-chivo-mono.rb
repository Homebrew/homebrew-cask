cask "font-chivo-mono" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/chivomono"
  name "Chivo Mono"
  homepage "https://fonts.google.com/specimen/Chivo+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chivo Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ChivoMono-Italic[wght].ttf"
  font "ChivoMono[wght].ttf"

  # No zap stanza required
end
