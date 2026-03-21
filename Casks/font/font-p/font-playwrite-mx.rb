cask "font-playwrite-mx" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritemx/PlaywriteMX%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite MX"
  homepage "https://fonts.google.com/specimen/Playwrite+MX"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite MX",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteMX[wght].ttf"

  # No zap stanza required
end
