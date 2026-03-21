cask "font-tiro-devanagari-hindi" do
  version "1.52"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirodevanagarihindi"
  name "Tiro Devanagari Hindi"
  homepage "https://fonts.google.com/specimen/Tiro+Devanagari+Hindi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tiro Devanagari Hindi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TiroDevanagariHindi-Italic.ttf"
  font "TiroDevanagariHindi-Regular.ttf"

  # No zap stanza required
end
