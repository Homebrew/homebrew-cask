cask "font-playwrite-hu-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehuguides/PlaywriteHUGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite HU Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+HU+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite HU Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteHUGuides-Regular.ttf"

  # No zap stanza required
end
