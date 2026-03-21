cask "font-tinos" do
  version "1.23"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/tinos"
  name "Tinos"
  homepage "https://fonts.google.com/specimen/Tinos"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tinos",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Tinos-Bold.ttf"
  font "Tinos-BoldItalic.ttf"
  font "Tinos-Italic.ttf"
  font "Tinos-Regular.ttf"

  # No zap stanza required
end
