cask "mpv" do
  version "0.35.1"
  sha256 "efec391acfb4445f89ab2af2c02199d883d47e7f85013217be158f6b07bbc12c"

  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz",
      verified: "laboratory.stolendata.net/~djinn/mpv_osx/"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  livecheck do
    url "https://laboratory.stolendata.net/~djinn/mpv_osx/"
    regex(/mpv-(\d+(?:\.\d+)+)\.t/i)
  end

  conflicts_with formula: "mpv"
  depends_on macos: ">= :mojave"

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
