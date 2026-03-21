cask "font-playwrite-au-qld" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteauqld/PlaywriteAUQLD%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU QLD"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+QLD"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AU QLD",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteAUQLD[wght].ttf"

  # No zap stanza required
end
