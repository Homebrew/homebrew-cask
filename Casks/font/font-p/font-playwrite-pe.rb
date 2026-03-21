cask "font-playwrite-pe" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritepe/PlaywritePE%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite PE"
  homepage "https://fonts.google.com/specimen/Playwrite+PE"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite PE",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywritePE[wght].ttf"

  # No zap stanza required
end
