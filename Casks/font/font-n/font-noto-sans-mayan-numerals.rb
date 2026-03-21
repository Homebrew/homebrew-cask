cask "font-noto-sans-mayan-numerals" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmayannumerals/NotoSansMayanNumerals-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Mayan Numerals"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mayan+Numerals"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Mayan Numerals",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMayanNumerals-Regular.ttf"

  # No zap stanza required
end
