cask "font-carlito" do
  version "1.104"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/carlito"
  name "Carlito"
  homepage "https://fonts.google.com/specimen/Carlito"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Carlito",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Carlito-Bold.ttf"
  font "Carlito-BoldItalic.ttf"
  font "Carlito-Italic.ttf"
  font "Carlito-Regular.ttf"

  # No zap stanza required
end
