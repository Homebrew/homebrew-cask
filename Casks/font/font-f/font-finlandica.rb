cask "font-finlandica" do
  version "1.064"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/finlandica"
  name "Finlandica"
  homepage "https://fonts.google.com/specimen/Finlandica"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Finlandica",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Finlandica-Italic[wght].ttf"
  font "Finlandica[wght].ttf"

  # No zap stanza required
end
