cask "font-texturina" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/texturina"
  name "Texturina"
  homepage "https://fonts.google.com/specimen/Texturina"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Texturina",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Texturina-Italic[opsz,wght].ttf"
  font "Texturina[opsz,wght].ttf"

  # No zap stanza required
end
