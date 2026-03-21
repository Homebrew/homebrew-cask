cask "font-noto-serif-gujarati" do
  version "2.106"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifgujarati/NotoSerifGujarati%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Gujarati"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Gujarati"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Gujarati",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifGujarati[wght].ttf"

  # No zap stanza required
end
