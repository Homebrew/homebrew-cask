cask "font-noto-sans-tai-tham" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstaitham/NotoSansTaiTham%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tai Tham"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tai+Tham"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Tai Tham",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTaiTham[wght].ttf"

  # No zap stanza required
end
