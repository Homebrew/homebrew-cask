cask "font-playwrite-nz-basic" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenzbasic/PlaywriteNZBasic%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NZ Basic"
  homepage "https://fonts.google.com/specimen/Playwrite+NZ+Basic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite NZ Basic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteNZBasic[wght].ttf"

  # No zap stanza required
end
