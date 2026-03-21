cask "font-playwrite-es-deco" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteesdeco/PlaywriteESDeco%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ES Deco"
  homepage "https://fonts.google.com/specimen/Playwrite+ES+Deco"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite ES Deco",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteESDeco[wght].ttf"

  # No zap stanza required
end
