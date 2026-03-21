cask "font-playwrite-ca-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecaguides/PlaywriteCAGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CA Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+CA+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite CA Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteCAGuides-Regular.ttf"

  # No zap stanza required
end
