cask "font-labrada" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/labrada"
  name "Labrada"
  homepage "https://fonts.google.com/specimen/Labrada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Labrada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Labrada-Italic[wght].ttf"
  font "Labrada[wght].ttf"

  # No zap stanza required
end
