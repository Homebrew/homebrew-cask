cask "font-playwrite-pl-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteplguides/PlaywritePLGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite PL Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+PL+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite PL Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywritePLGuides-Regular.ttf"

  # No zap stanza required
end
