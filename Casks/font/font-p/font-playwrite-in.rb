cask "font-playwrite-in" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritein/PlaywriteIN%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IN"
  homepage "https://fonts.google.com/specimen/Playwrite+IN"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite IN",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteIN[wght].ttf"

  # No zap stanza required
end
