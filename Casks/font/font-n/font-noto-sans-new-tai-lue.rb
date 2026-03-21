cask "font-noto-sans-new-tai-lue" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnewtailue/NotoSansNewTaiLue%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans New Tai Lue"
  homepage "https://fonts.google.com/specimen/Noto+Sans+New+Tai+Lue"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans New Tai Lue",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansNewTaiLue[wght].ttf"

  # No zap stanza required
end
