cask "font-playpen-sans-thai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensansthai/PlaypenSansThai%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playpen Sans Thai"
  homepage "https://fonts.google.com/specimen/Playpen+Sans+Thai"

  font "PlaypenSansThai[wght].ttf"

  # No zap stanza required
end
