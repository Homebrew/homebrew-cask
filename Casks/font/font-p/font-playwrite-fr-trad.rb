cask "font-playwrite-fr-trad" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrtrad/PlaywriteFRTrad%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite FR Trad"
  homepage "https://fonts.google.com/specimen/Playwrite+FR+Trad"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite FR Trad",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteFRTrad[wght].ttf"

  # No zap stanza required
end
