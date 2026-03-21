cask "font-playwrite-id-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteidguides/PlaywriteIDGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ID Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+ID+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite ID Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteIDGuides-Regular.ttf"

  # No zap stanza required
end
