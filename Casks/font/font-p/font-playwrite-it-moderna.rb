cask "font-playwrite-it-moderna" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteitmoderna/PlaywriteITModerna%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IT Moderna"
  homepage "https://fonts.google.com/specimen/Playwrite+IT+Moderna"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite IT Moderna",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteITModerna[wght].ttf"

  # No zap stanza required
end
