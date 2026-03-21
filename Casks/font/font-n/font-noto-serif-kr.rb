cask "font-noto-serif-kr" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifkr/NotoSerifKR%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif KR"
  homepage "https://fonts.google.com/specimen/Noto+Serif+KR"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif KR",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifKR[wght].ttf"

  # No zap stanza required
end
