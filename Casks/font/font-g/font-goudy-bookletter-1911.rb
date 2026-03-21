cask "font-goudy-bookletter-1911" do
  version "2010.07.03"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/goudybookletter1911/GoudyBookletter1911.ttf",
      verified: "github.com/google/fonts/"
  name "Goudy Bookletter 1911"
  homepage "https://fonts.google.com/specimen/Goudy+Bookletter+1911"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Goudy Bookletter 1911",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GoudyBookletter1911.ttf"

  # No zap stanza required
end
