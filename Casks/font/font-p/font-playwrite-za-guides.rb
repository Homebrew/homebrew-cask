cask "font-playwrite-za-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritezaguides/PlaywriteZAGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ZA Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+ZA+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite ZA Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteZAGuides-Regular.ttf"

  # No zap stanza required
end
