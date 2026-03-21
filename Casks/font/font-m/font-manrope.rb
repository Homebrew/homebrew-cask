cask "font-manrope" do
  version "4.504"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/manrope/Manrope%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Manrope"
  homepage "https://fonts.google.com/specimen/Manrope"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Manrope",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Manrope[wght].ttf"

  # No zap stanza required
end
