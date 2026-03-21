cask "font-noto-sans-cham" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscham/NotoSansCham%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Cham"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Cham"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Cham",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansCham[wght].ttf"

  # No zap stanza required
end
