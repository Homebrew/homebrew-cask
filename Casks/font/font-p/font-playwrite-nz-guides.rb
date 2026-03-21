cask "font-playwrite-nz-guides" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenzguides/PlaywriteNZGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NZ Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+NZ+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite NZ Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteNZGuides-Regular.ttf"

  # No zap stanza required
end
