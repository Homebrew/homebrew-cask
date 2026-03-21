cask "font-playwrite-ar-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritearguides/PlaywriteARGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AR Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AR+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AR Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteARGuides-Regular.ttf"

  # No zap stanza required
end
