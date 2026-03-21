cask "font-linden-hill" do
  version "1.201"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lindenhill"
  name "Linden Hill"
  homepage "https://fonts.google.com/specimen/Linden+Hill"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Linden Hill",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LindenHill-Italic.ttf"
  font "LindenHill-Regular.ttf"

  # No zap stanza required
end
