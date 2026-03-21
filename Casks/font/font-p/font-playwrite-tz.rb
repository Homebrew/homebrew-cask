cask "font-playwrite-tz" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritetz/PlaywriteTZ%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite TZ"
  homepage "https://fonts.google.com/specimen/Playwrite+TZ"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite TZ",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteTZ[wght].ttf"

  # No zap stanza required
end
