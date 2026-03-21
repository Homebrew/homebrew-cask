cask "font-playwrite-es-deco-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteesdecoguides/PlaywriteESDecoGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ES Deco Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+ES+Deco+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite ES Deco Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteESDecoGuides-Regular.ttf"

  # No zap stanza required
end
