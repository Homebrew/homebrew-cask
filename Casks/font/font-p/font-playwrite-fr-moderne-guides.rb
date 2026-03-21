cask "font-playwrite-fr-moderne-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrmoderneguides/PlaywriteFRModerneGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite FR Moderne Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+FR+Moderne+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite FR Moderne Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteFRModerneGuides-Regular.ttf"

  # No zap stanza required
end
