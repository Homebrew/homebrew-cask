cask "font-noto-sans-syriac-western" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssyriacwestern/NotoSansSyriacWestern%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Syriac Western"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Syriac+Western"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Syriac Western",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSyriacWestern[wght].ttf"

  # No zap stanza required
end
