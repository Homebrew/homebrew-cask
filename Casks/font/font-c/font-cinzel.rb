cask "font-cinzel" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cinzel/Cinzel%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Cinzel"
  homepage "https://fonts.google.com/specimen/Cinzel"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cinzel",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cinzel[wght].ttf"

  # No zap stanza required
end
