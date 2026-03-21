cask "font-playwrite-in-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteinguides/PlaywriteINGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IN Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+IN+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite IN Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteINGuides-Regular.ttf"

  # No zap stanza required
end
