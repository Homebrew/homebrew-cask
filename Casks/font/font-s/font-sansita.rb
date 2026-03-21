cask "font-sansita" do
  version "1.006"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sansita"
  name "Sansita"
  homepage "https://fonts.google.com/specimen/Sansita"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sansita",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sansita-Black.ttf"
  font "Sansita-BlackItalic.ttf"
  font "Sansita-Bold.ttf"
  font "Sansita-BoldItalic.ttf"
  font "Sansita-ExtraBold.ttf"
  font "Sansita-ExtraBoldItalic.ttf"
  font "Sansita-Italic.ttf"
  font "Sansita-Regular.ttf"

  # No zap stanza required
end
