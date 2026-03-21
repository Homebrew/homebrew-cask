cask "font-faculty-glyphic" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/facultyglyphic/FacultyGlyphic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Faculty Glyphic"
  homepage "https://fonts.google.com/specimen/Faculty+Glyphic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Faculty Glyphic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FacultyGlyphic-Regular.ttf"

  # No zap stanza required
end
