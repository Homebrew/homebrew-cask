cask "font-noto-sans-ol-chiki" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansolchiki/NotoSansOlChiki%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Ol Chiki"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Ol+Chiki"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Ol Chiki",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOlChiki[wght].ttf"

  # No zap stanza required
end
