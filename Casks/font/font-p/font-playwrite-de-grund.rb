cask "font-playwrite-de-grund" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedegrund/PlaywriteDEGrund%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE Grund"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+Grund"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DE Grund",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDEGrund[wght].ttf"

  # No zap stanza required
end
