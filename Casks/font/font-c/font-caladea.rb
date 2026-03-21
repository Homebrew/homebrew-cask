cask "font-caladea" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/caladea"
  name "Caladea"
  homepage "https://fonts.google.com/specimen/Caladea"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Caladea",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Caladea-Bold.ttf"
  font "Caladea-BoldItalic.ttf"
  font "Caladea-Italic.ttf"
  font "Caladea-Regular.ttf"

  # No zap stanza required
end
