cask "font-rubik-maze" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmaze/RubikMaze-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Maze"
  homepage "https://fonts.google.com/specimen/Rubik+Maze"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Maze",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikMaze-Regular.ttf"

  # No zap stanza required
end
