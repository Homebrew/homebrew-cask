cask "font-libre-bodoni" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/librebodoni"
  name "Libre Bodoni"
  homepage "https://fonts.google.com/specimen/Libre+Bodoni"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Libre Bodoni",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LibreBodoni-Italic[wght].ttf"
  font "LibreBodoni[wght].ttf"

  # No zap stanza required
end
