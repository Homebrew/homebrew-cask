cask "font-literata" do
  version "3.103"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/literata"
  name "Literata"
  homepage "https://fonts.google.com/specimen/Literata"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Literata",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Literata-Italic[opsz,wght].ttf"
  font "Literata[opsz,wght].ttf"

  # No zap stanza required
end
