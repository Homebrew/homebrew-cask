cask "font-playwrite-au-nsw" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteaunsw/PlaywriteAUNSW%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU NSW"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+NSW"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AU NSW",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteAUNSW[wght].ttf"

  # No zap stanza required
end
