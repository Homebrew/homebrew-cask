cask "font-playwrite-ng-modern-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritengmodernguides/PlaywriteNGModernGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NG Modern Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+NG+Modern+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite NG Modern Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteNGModernGuides-Regular.ttf"

  # No zap stanza required
end
