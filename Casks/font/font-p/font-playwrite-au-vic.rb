cask "font-playwrite-au-vic" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteauvic/PlaywriteAUVIC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU VIC"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+VIC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AU VIC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteAUVIC[wght].ttf"

  # No zap stanza required
end
