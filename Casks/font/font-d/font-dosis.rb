cask "font-dosis" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dosis/Dosis%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Dosis"
  homepage "https://fonts.google.com/specimen/Dosis"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dosis",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Dosis[wght].ttf"

  # No zap stanza required
end
