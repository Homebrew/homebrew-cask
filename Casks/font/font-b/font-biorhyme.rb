cask "font-biorhyme" do
  version "1.600"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/biorhyme/BioRhyme%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "BioRhyme"
  homepage "https://fonts.google.com/specimen/BioRhyme"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BioRhyme",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BioRhyme[wdth,wght].ttf"

  # No zap stanza required
end
