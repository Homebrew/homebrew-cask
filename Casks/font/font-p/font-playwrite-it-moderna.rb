cask "font-playwrite-it-moderna" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteitmoderna/PlaywriteITModerna%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IT Moderna"
  homepage "https://fonts.google.com/specimen/Playwrite+IT+Moderna"

  font "PlaywriteITModerna[wght].ttf"

  # No zap stanza required
end
