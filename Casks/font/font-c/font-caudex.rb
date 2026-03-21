cask "font-caudex" do
  version "1.01"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/caudex"
  name "Caudex"
  homepage "https://fonts.google.com/specimen/Caudex"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Caudex",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Caudex-Bold.ttf"
  font "Caudex-BoldItalic.ttf"
  font "Caudex-Italic.ttf"
  font "Caudex-Regular.ttf"

  # No zap stanza required
end
