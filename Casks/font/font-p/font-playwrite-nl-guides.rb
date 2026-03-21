cask "font-playwrite-nl-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenlguides/PlaywriteNLGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NL Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+NL+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite NL Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteNLGuides-Regular.ttf"

  # No zap stanza required
end
