cask "font-playwrite-fr-trad-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrtradguides/PlaywriteFRTradGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite FR Trad Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+FR+Trad+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite FR Trad Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteFRTradGuides-Regular.ttf"

  # No zap stanza required
end
