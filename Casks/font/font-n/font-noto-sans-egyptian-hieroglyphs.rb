cask "font-noto-sans-egyptian-hieroglyphs" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansegyptianhieroglyphs/NotoSansEgyptianHieroglyphs-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Egyptian Hieroglyphs"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Egyptian+Hieroglyphs"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Egyptian Hieroglyphs",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansEgyptianHieroglyphs-Regular.ttf"

  # No zap stanza required
end
