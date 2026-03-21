cask "font-playwrite-br" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebr/PlaywriteBR%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BR"
  homepage "https://fonts.google.com/specimen/Playwrite+BR"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite BR",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteBR[wght].ttf"

  # No zap stanza required
end
