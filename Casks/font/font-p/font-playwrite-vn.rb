cask "font-playwrite-vn" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritevn/PlaywriteVN%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite VN"
  homepage "https://fonts.google.com/specimen/Playwrite+VN"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite VN",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteVN[wght].ttf"

  # No zap stanza required
end
