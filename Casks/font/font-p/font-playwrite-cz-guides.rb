cask "font-playwrite-cz-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteczguides/PlaywriteCZGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CZ Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+CZ+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite CZ Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteCZGuides-Regular.ttf"

  # No zap stanza required
end
