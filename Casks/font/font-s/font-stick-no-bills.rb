cask "font-stick-no-bills" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sticknobills/StickNoBills%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Stick No Bills"
  homepage "https://fonts.google.com/specimen/Stick+No+Bills"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Stick No Bills",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "StickNoBills[wght].ttf"

  # No zap stanza required
end
