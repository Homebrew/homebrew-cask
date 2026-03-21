cask "font-playwrite-us-trad" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteustrad/PlaywriteUSTrad%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite US Trad"
  homepage "https://fonts.google.com/specimen/Playwrite+US+Trad"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite US Trad",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteUSTrad[wght].ttf"

  # No zap stanza required
end
