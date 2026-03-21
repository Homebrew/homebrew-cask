cask "font-playpen-sans-arabic" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensansarabic/PlaypenSansArabic%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playpen Sans Arabic"
  homepage "https://fonts.google.com/specimen/Playpen+Sans+Arabic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playpen Sans Arabic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaypenSansArabic[wght].ttf"

  # No zap stanza required
end
