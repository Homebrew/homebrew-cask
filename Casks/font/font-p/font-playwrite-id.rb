cask "font-playwrite-id" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteid/PlaywriteID%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ID"
  homepage "https://fonts.google.com/specimen/Playwrite+ID"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite ID",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteID[wght].ttf"

  # No zap stanza required
end
