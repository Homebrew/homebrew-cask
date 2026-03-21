cask "font-playwrite-es-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteesguides/PlaywriteESGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ES Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+ES+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite ES Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteESGuides-Regular.ttf"

  # No zap stanza required
end
