cask "font-playwrite-it-trad" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteittrad/PlaywriteITTrad%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IT Trad"
  homepage "https://fonts.google.com/specimen/Playwrite+IT+Trad"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite IT Trad",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteITTrad[wght].ttf"

  # No zap stanza required
end
