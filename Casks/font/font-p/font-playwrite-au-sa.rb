cask "font-playwrite-au-sa" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteausa/PlaywriteAUSA%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU SA"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+SA"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AU SA",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteAUSA[wght].ttf"

  # No zap stanza required
end
