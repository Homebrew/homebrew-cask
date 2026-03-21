cask "font-cambay" do
  version "1.096"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cambay"
  name "Cambay"
  homepage "https://fonts.google.com/specimen/Cambay"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cambay",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cambay-Bold.ttf"
  font "Cambay-BoldItalic.ttf"
  font "Cambay-Italic.ttf"
  font "Cambay-Regular.ttf"

  # No zap stanza required
end
