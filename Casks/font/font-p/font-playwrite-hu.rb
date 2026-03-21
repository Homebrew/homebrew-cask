cask "font-playwrite-hu" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehu/PlaywriteHU%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite HU"
  homepage "https://fonts.google.com/specimen/Playwrite+HU"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite HU",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteHU[wght].ttf"

  # No zap stanza required
end
