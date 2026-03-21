cask "font-chivo" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/chivo"
  name "Chivo"
  homepage "https://fonts.google.com/specimen/Chivo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chivo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Chivo-Italic[wght].ttf"
  font "Chivo[wght].ttf"

  # No zap stanza required
end
