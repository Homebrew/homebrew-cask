cask "font-bodoni-moda-sc" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bodonimodasc"
  name "Bodoni Moda SC"
  homepage "https://fonts.google.com/specimen/Bodoni+Moda+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bodoni Moda SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BodoniModaSC-Italic[opsz,wght].ttf"
  font "BodoniModaSC[opsz,wght].ttf"

  # No zap stanza required
end
