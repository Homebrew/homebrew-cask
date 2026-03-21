cask "font-tiro-devanagari-sanskrit" do
  version "1.52"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirodevanagarisanskrit"
  name "Tiro Devanagari Sanskrit"
  homepage "https://fonts.google.com/specimen/Tiro+Devanagari+Sanskrit"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tiro Devanagari Sanskrit",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TiroDevanagariSanskrit-Italic.ttf"
  font "TiroDevanagariSanskrit-Regular.ttf"

  # No zap stanza required
end
