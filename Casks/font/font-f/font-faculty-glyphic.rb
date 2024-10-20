cask "font-faculty-glyphic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/facultyglyphic/FacultyGlyphic-Regular.ttf"
  name "Faculty Glyphic"
  homepage "https://github.com/DylanYoungKoto/FacultyGlyphic"

  font "FacultyGlyphic-Regular.ttf"

  # No zap stanza required
end
