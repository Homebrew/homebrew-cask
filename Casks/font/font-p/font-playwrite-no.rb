cask "font-playwrite-no" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteno/PlaywriteNO%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NO"
  homepage "https://fonts.google.com/specimen/Playwrite+NO"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite NO",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteNO[wght].ttf"

  # No zap stanza required
end
