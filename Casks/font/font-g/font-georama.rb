cask "font-georama" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/georama"
  name "Georama"
  homepage "https://fonts.google.com/specimen/Georama"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Georama",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Georama-Italic[wdth,wght].ttf"
  font "Georama[wdth,wght].ttf"

  # No zap stanza required
end
