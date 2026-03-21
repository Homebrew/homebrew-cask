cask "font-kalnia" do
  version "1.105"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kalnia/Kalnia%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kalnia"
  homepage "https://fonts.google.com/specimen/Kalnia"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kalnia",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kalnia[wdth,wght].ttf"

  # No zap stanza required
end
