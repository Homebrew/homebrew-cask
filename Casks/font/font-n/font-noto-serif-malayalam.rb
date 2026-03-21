cask "font-noto-serif-malayalam" do
  version "2.104"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifmalayalam/NotoSerifMalayalam%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Malayalam"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Malayalam"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Malayalam",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifMalayalam[wght].ttf"

  # No zap stanza required
end
