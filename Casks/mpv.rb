cask "mpv" do
  version "0.33.1"
  sha256 "b2cfa0dd1dfd3d00d360a5ed50919920a2429da84315148fdda4bda886aa8225"

  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz",
      verified: "laboratory.stolendata.net/~djinn/mpv_osx/"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  livecheck do
    url "https://laboratory.stolendata.net/~djinn/mpv_osx/"
    strategy :page_match
    regex(/mpv-(\d+(?:\.\d+)*)\.tar\.gz/i)
  end

  conflicts_with formula: "mpv"
  depends_on macos: ">= :sierra"

  app "mpv.app"
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"
  manpage "documentation/man/mpv.1"

  zap trash: [
    "~/.config/mpv",
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end
