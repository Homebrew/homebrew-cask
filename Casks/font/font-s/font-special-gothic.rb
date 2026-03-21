cask "font-special-gothic" do
  version "1.011"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/specialgothic/SpecialGothic%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Special Gothic"
  homepage "https://fonts.google.com/specimen/Special+Gothic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Special Gothic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SpecialGothic[wdth,wght].ttf"

  # No zap stanza required
end
