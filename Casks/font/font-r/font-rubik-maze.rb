cask "font-rubik-maze" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmaze/RubikMaze-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Maze"
  homepage "https://fonts.google.com/specimen/Rubik+Maze"

  font "RubikMaze-Regular.ttf"

  # No zap stanza required
end
