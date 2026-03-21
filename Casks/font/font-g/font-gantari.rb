cask "font-gantari" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gantari"
  name "Gantari"
  homepage "https://fonts.google.com/specimen/Gantari"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gantari",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gantari-Italic[wght].ttf"
  font "Gantari[wght].ttf"

  # No zap stanza required
end
