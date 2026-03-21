cask "font-playwrite-nz" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenz/PlaywriteNZ%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NZ"
  homepage "https://fonts.google.com/specimen/Playwrite+NZ"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite NZ",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteNZ[wght].ttf"

  # No zap stanza required
end
