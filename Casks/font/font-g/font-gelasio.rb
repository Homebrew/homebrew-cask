cask "font-gelasio" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gelasio"
  name "Gelasio"
  homepage "https://fonts.google.com/specimen/Gelasio"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gelasio",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gelasio-Italic[wght].ttf"
  font "Gelasio[wght].ttf"

  # No zap stanza required
end
