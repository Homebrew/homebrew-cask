cask "font-noto-serif-oriya" do
  version "1.051"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriforiya/NotoSerifOriya%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Oriya"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Oriya"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Oriya",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifOriya[wght].ttf"

  # No zap stanza required
end
