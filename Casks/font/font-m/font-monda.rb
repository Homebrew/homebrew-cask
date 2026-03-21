cask "font-monda" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/monda/Monda%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Monda"
  homepage "https://fonts.google.com/specimen/Monda"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Monda",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Monda[wght].ttf"

  # No zap stanza required
end
