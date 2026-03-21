cask "font-alumni-sans" do
  version "1.016"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/alumnisans"
  name "Alumni Sans"
  homepage "https://fonts.google.com/specimen/Alumni+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alumni Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AlumniSans-Italic[wght].ttf"
  font "AlumniSans[wght].ttf"

  # No zap stanza required
end
