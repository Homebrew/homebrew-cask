cask "font-playwrite-it-moderna" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteitmoderna/PlaywriteITModerna%5Bwght%5D.ttf"
  name "Playwrite IT Moderna"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteITModerna[wght].ttf"

  # No zap stanza required
end
