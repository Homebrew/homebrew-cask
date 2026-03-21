cask "font-playwrite-za" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteza/PlaywriteZA%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ZA"
  homepage "https://fonts.google.com/specimen/Playwrite+ZA"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite ZA",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteZA[wght].ttf"

  # No zap stanza required
end
