cask "font-arimo" do
  version "1.33"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/arimo"
  name "Arimo"
  homepage "https://fonts.google.com/specimen/Arimo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Arimo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Arimo-Italic[wght].ttf"
  font "Arimo[wght].ttf"

  # No zap stanza required
end
