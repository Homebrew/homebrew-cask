cask "font-tiro-gurmukhi" do
  version "1.52"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirogurmukhi"
  name "Tiro Gurmukhi"
  homepage "https://fonts.google.com/specimen/Tiro+Gurmukhi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tiro Gurmukhi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TiroGurmukhi-Italic.ttf"
  font "TiroGurmukhi-Regular.ttf"

  # No zap stanza required
end
