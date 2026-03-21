cask "font-playwrite-dk-uloopet-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedkuloopetguides/PlaywriteDKUloopetGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DK Uloopet Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DK+Uloopet+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DK Uloopet Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDKUloopetGuides-Regular.ttf"

  # No zap stanza required
end
