cask "font-golos-text" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/golostext/GolosText%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Golos Text"
  homepage "https://fonts.google.com/specimen/Golos+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Golos Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GolosText[wght].ttf"

  # No zap stanza required
end
