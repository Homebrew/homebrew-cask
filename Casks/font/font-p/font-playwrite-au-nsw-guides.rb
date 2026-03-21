cask "font-playwrite-au-nsw-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteaunswguides/PlaywriteAUNSWGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU NSW Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+NSW+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AU NSW Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteAUNSWGuides-Regular.ttf"

  # No zap stanza required
end
