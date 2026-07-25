cask "font-faculty-glyphic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/facultyglyphic/FacultyGlyphic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Faculty Glyphic"
  homepage "https://fonts.google.com/specimen/Faculty+Glyphic"

  font "FacultyGlyphic-Regular.ttf"

  # No zap stanza required
end
