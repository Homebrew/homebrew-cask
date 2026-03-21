cask "font-noto-sans-vithkuqi" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansvithkuqi/NotoSansVithkuqi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Vithkuqi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Vithkuqi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Vithkuqi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansVithkuqi[wght].ttf"

  # No zap stanza required
end
