cask "font-playwrite-cu-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecuguides/PlaywriteCUGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CU Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+CU+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite CU Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteCUGuides-Regular.ttf"

  # No zap stanza required
end
