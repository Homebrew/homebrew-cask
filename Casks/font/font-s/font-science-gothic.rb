cask "font-science-gothic" do
  version "1.035"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sciencegothic/ScienceGothic%5BCTRS%2Cslnt%2Cwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Science Gothic"
  homepage "https://fonts.google.com/specimen/Science+Gothic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Science Gothic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ScienceGothic[CTRS,slnt,wdth,wght].ttf"

  # No zap stanza required
end
