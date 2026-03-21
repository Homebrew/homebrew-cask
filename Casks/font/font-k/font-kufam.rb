cask "font-kufam" do
  version "1.301"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kufam"
  name "Kufam"
  homepage "https://fonts.google.com/specimen/Kufam"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kufam",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kufam-Italic[wght].ttf"
  font "Kufam[wght].ttf"

  # No zap stanza required
end
