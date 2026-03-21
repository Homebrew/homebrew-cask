cask "font-playwrite-de-grund-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedegrundguides/PlaywriteDEGrundGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE Grund Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+Grund+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DE Grund Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDEGrundGuides-Regular.ttf"

  # No zap stanza required
end
