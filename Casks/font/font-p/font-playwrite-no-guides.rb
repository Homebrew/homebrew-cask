cask "font-playwrite-no-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenoguides/PlaywriteNOGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NO Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+NO+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite NO Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteNOGuides-Regular.ttf"

  # No zap stanza required
end
