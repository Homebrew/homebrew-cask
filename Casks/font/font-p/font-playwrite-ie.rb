cask "font-playwrite-ie" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteie/PlaywriteIE%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IE"
  homepage "https://fonts.google.com/specimen/Playwrite+IE"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite IE",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteIE[wght].ttf"

  # No zap stanza required
end
