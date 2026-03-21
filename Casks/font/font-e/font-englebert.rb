cask "font-englebert" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/englebert/Englebert-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Englebert"
  homepage "https://fonts.google.com/specimen/Englebert"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Englebert",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Englebert-Regular.ttf"

  # No zap stanza required
end
