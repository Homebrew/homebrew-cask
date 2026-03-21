cask "font-playwrite-it-trad-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteittradguides/PlaywriteITTradGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IT Trad Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+IT+Trad+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite IT Trad Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteITTradGuides-Regular.ttf"

  # No zap stanza required
end
