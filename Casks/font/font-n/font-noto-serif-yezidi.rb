cask "font-noto-serif-yezidi" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifyezidi/NotoSerifYezidi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Yezidi"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Yezidi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Yezidi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifYezidi[wght].ttf"

  # No zap stanza required
end
