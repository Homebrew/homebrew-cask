cask "font-playwrite-hr" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehr/PlaywriteHR%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite HR"
  homepage "https://fonts.google.com/specimen/Playwrite+HR"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite HR",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteHR[wght].ttf"

  # No zap stanza required
end
