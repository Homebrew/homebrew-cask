cask "font-parkinsans" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/parkinsans/Parkinsans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Parkinsans"
  homepage "https://fonts.google.com/specimen/Parkinsans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Parkinsans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Parkinsans[wght].ttf"

  # No zap stanza required
end
