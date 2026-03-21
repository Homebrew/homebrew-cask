cask "font-rubik-doodle-triangles" do
  version "2.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikdoodletriangles/RubikDoodleTriangles-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Doodle Triangles"
  homepage "https://fonts.google.com/specimen/Rubik+Doodle+Triangles"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Doodle Triangles",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikDoodleTriangles-Regular.ttf"

  # No zap stanza required
end
