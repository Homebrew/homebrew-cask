cask "font-amarna" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/amarna"
  name "Amarna"
  homepage "https://fonts.google.com/specimen/Amarna"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Amarna",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Amarna-Italic[wght].ttf"
  font "Amarna[wght].ttf"

  # No zap stanza required
end
