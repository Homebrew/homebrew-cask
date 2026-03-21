cask "font-playwrite-pl" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritepl/PlaywritePL%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite PL"
  homepage "https://fonts.google.com/specimen/Playwrite+PL"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite PL",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywritePL[wght].ttf"

  # No zap stanza required
end
