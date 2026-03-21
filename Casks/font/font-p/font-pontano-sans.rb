cask "font-pontano-sans" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pontanosans/PontanoSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Pontano Sans"
  homepage "https://fonts.google.com/specimen/Pontano+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pontano Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PontanoSans[wght].ttf"

  # No zap stanza required
end
