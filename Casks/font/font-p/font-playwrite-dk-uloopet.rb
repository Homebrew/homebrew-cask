cask "font-playwrite-dk-uloopet" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedkuloopet/PlaywriteDKUloopet%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DK Uloopet"
  homepage "https://fonts.google.com/specimen/Playwrite+DK+Uloopet"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DK Uloopet",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDKUloopet[wght].ttf"

  # No zap stanza required
end
