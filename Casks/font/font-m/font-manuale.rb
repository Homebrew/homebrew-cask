cask "font-manuale" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/manuale"
  name "Manuale"
  homepage "https://fonts.google.com/specimen/Manuale"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Manuale",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Manuale-Italic[wght].ttf"
  font "Manuale[wght].ttf"

  # No zap stanza required
end
