cask "font-noto-sans-myanmar" do
  version "2.107"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmyanmar/NotoSansMyanmar%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Myanmar"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Myanmar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Myanmar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMyanmar[wdth,wght].ttf"

  # No zap stanza required
end
