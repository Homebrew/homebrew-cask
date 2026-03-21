cask "font-playwrite-nz-basic-guides" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenzbasicguides/PlaywriteNZBasicGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NZ Basic Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+NZ+Basic+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite NZ Basic Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteNZBasicGuides-Regular.ttf"

  # No zap stanza required
end
