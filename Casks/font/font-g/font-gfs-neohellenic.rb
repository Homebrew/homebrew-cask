cask "font-gfs-neohellenic" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gfsneohellenic"
  name "GFS Neohellenic"
  homepage "https://fonts.google.com/specimen/GFS+Neohellenic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "GFS Neohellenic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GFSNeohellenic.ttf"
  font "GFSNeohellenicBold.ttf"
  font "GFSNeohellenicBoldItalic.ttf"
  font "GFSNeohellenicItalic.ttf"

  # No zap stanza required
end
