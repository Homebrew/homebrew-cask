cask "font-playwrite-ar" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritear/PlaywriteAR%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AR"
  homepage "https://fonts.google.com/specimen/Playwrite+AR"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AR",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteAR[wght].ttf"

  # No zap stanza required
end
