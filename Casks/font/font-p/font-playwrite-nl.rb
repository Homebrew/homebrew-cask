cask "font-playwrite-nl" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenl/PlaywriteNL%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NL"
  homepage "https://fonts.google.com/specimen/Playwrite+NL"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite NL",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteNL[wght].ttf"

  # No zap stanza required
end
