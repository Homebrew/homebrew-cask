cask "font-gfs-didot" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gfsdidot/GFSDidot-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "GFS Didot"
  homepage "https://fonts.google.com/specimen/GFS+Didot"

  font "GFSDidot-Regular.ttf"

  # No zap stanza required
end
