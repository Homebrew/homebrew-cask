cask "font-playwrite-dk-loopet" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedkloopet/PlaywriteDKLoopet%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DK Loopet"
  homepage "https://fonts.google.com/specimen/Playwrite+DK+Loopet"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DK Loopet",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDKLoopet[wght].ttf"

  # No zap stanza required
end
