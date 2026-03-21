cask "font-noto-serif-tibetan" do
  version "2.103"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftibetan/NotoSerifTibetan%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Tibetan"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Tibetan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Tibetan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifTibetan[wght].ttf"

  # No zap stanza required
end
