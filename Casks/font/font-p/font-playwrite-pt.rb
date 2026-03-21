cask "font-playwrite-pt" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritept/PlaywritePT%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite PT"
  homepage "https://fonts.google.com/specimen/Playwrite+PT"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite PT",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywritePT[wght].ttf"

  # No zap stanza required
end
