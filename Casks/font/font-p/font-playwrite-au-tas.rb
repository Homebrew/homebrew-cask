cask "font-playwrite-au-tas" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteautas/PlaywriteAUTAS%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU TAS"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+TAS"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AU TAS",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteAUTAS[wght].ttf"

  # No zap stanza required
end
