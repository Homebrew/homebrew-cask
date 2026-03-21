cask "font-playwrite-hr-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehrguides/PlaywriteHRGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite HR Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+HR+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite HR Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteHRGuides-Regular.ttf"

  # No zap stanza required
end
