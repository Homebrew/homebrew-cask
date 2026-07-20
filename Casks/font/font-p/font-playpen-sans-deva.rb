cask "font-playpen-sans-deva" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensansdeva/PlaypenSansDeva%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playpen Sans Deva"
  homepage "https://fonts.google.com/specimen/Playpen+Sans+Deva"

  font "PlaypenSansDeva[wght].ttf"

  # No zap stanza required
end
