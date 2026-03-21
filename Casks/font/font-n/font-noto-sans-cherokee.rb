cask "font-noto-sans-cherokee" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscherokee/NotoSansCherokee%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Cherokee"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Cherokee"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Cherokee",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansCherokee[wght].ttf"

  # No zap stanza required
end
