cask "font-playwrite-fr-moderne" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrmoderne/PlaywriteFRModerne%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite FR Moderne"
  homepage "https://fonts.google.com/specimen/Playwrite+FR+Moderne"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite FR Moderne",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteFRModerne[wght].ttf"

  # No zap stanza required
end
