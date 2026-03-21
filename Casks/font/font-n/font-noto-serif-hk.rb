cask "font-noto-serif-hk" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifhk/NotoSerifHK%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif HK"
  homepage "https://fonts.google.com/specimen/Noto+Serif+HK"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif HK",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifHK[wght].ttf"

  # No zap stanza required
end
