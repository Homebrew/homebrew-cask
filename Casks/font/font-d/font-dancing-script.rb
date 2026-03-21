cask "font-dancing-script" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dancingscript/DancingScript%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Dancing Script"
  homepage "https://fonts.google.com/specimen/Dancing+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dancing Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DancingScript[wght].ttf"

  # No zap stanza required
end
