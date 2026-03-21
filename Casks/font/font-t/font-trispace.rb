cask "font-trispace" do
  version "1.210"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/trispace/Trispace%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Trispace"
  homepage "https://fonts.google.com/specimen/Trispace"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Trispace",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Trispace[wdth,wght].ttf"

  # No zap stanza required
end
