cask "font-noto-sans-javanese" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansjavanese/NotoSansJavanese%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Javanese"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Javanese"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Javanese",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansJavanese[wght].ttf"

  # No zap stanza required
end
