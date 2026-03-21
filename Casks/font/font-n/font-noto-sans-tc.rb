cask "font-noto-sans-tc" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstc/NotoSansTC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans TC"
  homepage "https://fonts.google.com/specimen/Noto+Sans+TC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans TC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTC[wght].ttf"

  # No zap stanza required
end
