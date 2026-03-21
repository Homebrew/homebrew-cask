cask "font-playwrite-sk-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteskguides/PlaywriteSKGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite SK Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+SK+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite SK Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteSKGuides-Regular.ttf"

  # No zap stanza required
end
