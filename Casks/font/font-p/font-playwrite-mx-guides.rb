cask "font-playwrite-mx-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritemxguides/PlaywriteMXGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite MX Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+MX+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite MX Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteMXGuides-Regular.ttf"

  # No zap stanza required
end
