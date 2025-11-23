cask "font-gfs-neohellenic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gfsneohellenic"
  name "GFS Neohellenic"
  homepage "https://fonts.google.com/specimen/GFS+Neohellenic"

  font "GFSNeohellenic.ttf"
  font "GFSNeohellenicBold.ttf"
  font "GFSNeohellenicBoldItalic.ttf"
  font "GFSNeohellenicItalic.ttf"

  # No zap stanza required
end
