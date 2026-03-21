cask "font-playwrite-co-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecoguides/PlaywriteCOGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CO Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+CO+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite CO Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteCOGuides-Regular.ttf"

  # No zap stanza required
end
