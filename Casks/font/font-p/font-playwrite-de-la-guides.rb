cask "font-playwrite-de-la-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedelaguides/PlaywriteDELAGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE LA Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+LA+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DE LA Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDELAGuides-Regular.ttf"

  # No zap stanza required
end
