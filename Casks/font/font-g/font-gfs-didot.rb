cask "font-gfs-didot" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gfsdidot/GFSDidot-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "GFS Didot"
  homepage "https://fonts.google.com/specimen/GFS+Didot"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "GFS Didot",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GFSDidot-Regular.ttf"

  # No zap stanza required
end
