cask "font-playwrite-au-tas-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteautasguides/PlaywriteAUTASGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU TAS Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+TAS+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AU TAS Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteAUTASGuides-Regular.ttf"

  # No zap stanza required
end
