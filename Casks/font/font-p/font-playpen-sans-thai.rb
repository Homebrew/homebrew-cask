cask "font-playpen-sans-thai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensansthai/PlaypenSansThai%5Bwght%5D.ttf"
  name "Playpen Sans Thai"
  homepage "https://github.com/TypeTogether/Playpen-Sans"

  font "PlaypenSansThai[wght].ttf"

  # No zap stanza required
end
