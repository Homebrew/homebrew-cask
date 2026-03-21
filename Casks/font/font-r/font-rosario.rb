cask "font-rosario" do
  version "1.201"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rosario"
  name "Rosario"
  homepage "https://fonts.google.com/specimen/Rosario"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rosario",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rosario-Italic[wght].ttf"
  font "Rosario[wght].ttf"

  # No zap stanza required
end
