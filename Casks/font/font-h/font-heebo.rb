cask "font-heebo" do
  version "3.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/heebo/Heebo%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Heebo"
  homepage "https://fonts.google.com/specimen/Heebo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Heebo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Heebo[wght].ttf"

  # No zap stanza required
end
