cask "font-playwrite-ng-modern" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritengmodern/PlaywriteNGModern%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NG Modern"
  homepage "https://fonts.google.com/specimen/Playwrite+NG+Modern"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite NG Modern",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteNGModern[wght].ttf"

  # No zap stanza required
end
