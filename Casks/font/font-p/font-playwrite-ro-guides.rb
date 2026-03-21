cask "font-playwrite-ro-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteroguides/PlaywriteROGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite RO Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+RO+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite RO Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteROGuides-Regular.ttf"

  # No zap stanza required
end
