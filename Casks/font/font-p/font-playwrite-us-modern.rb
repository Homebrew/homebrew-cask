cask "font-playwrite-us-modern" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteusmodern/PlaywriteUSModern%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite US Modern"
  homepage "https://fonts.google.com/specimen/Playwrite+US+Modern"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite US Modern",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteUSModern[wght].ttf"

  # No zap stanza required
end
