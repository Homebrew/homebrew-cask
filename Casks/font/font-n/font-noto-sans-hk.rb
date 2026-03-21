cask "font-noto-sans-hk" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanshk/NotoSansHK%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans HK"
  homepage "https://fonts.google.com/specimen/Noto+Sans+HK"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans HK",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansHK[wght].ttf"

  # No zap stanza required
end
