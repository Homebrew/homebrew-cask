cask "font-playwrite-be-vlg-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebevlgguides/PlaywriteBEVLGGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BE VLG Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+BE+VLG+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite BE VLG Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteBEVLGGuides-Regular.ttf"

  # No zap stanza required
end
