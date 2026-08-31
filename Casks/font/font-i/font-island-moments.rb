cask "font-island-moments" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/islandmoments/IslandMoments-Regular.ttf"
  name "Island Moments"
  homepage "https://fonts.google.com/specimen/Island+Moments"

  font "IslandMoments-Regular.ttf"

  # No zap stanza required
end
