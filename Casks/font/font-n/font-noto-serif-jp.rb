cask "font-noto-serif-jp" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifjp/NotoSerifJP%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif JP"
  homepage "https://fonts.google.com/specimen/Noto+Serif+JP"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif JP",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifJP[wght].ttf"

  # No zap stanza required
end
