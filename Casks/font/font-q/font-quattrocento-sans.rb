cask "font-quattrocento-sans" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/quattrocentosans"
  name "Quattrocento Sans"
  homepage "https://fonts.google.com/specimen/Quattrocento+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Quattrocento Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "QuattrocentoSans-Bold.ttf"
  font "QuattrocentoSans-BoldItalic.ttf"
  font "QuattrocentoSans-Italic.ttf"
  font "QuattrocentoSans-Regular.ttf"

  # No zap stanza required
end
