cask "font-noto-sans-anatolian-hieroglyphs" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansanatolianhieroglyphs/NotoSansAnatolianHieroglyphs-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Anatolian Hieroglyphs"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Anatolian+Hieroglyphs"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Anatolian Hieroglyphs",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansAnatolianHieroglyphs-Regular.ttf"

  # No zap stanza required
end
