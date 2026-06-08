cask "font-rubik-doodle-triangles" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikdoodletriangles/RubikDoodleTriangles-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Doodle Triangles"
  homepage "https://fonts.google.com/specimen/Rubik+Doodle+Triangles"

  font "RubikDoodleTriangles-Regular.ttf"

  # No zap stanza required
end
