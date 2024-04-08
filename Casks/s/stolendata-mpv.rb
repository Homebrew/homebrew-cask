cask "stolendata-mpv" do
  on_catalina :or_older do
    version "0.35.0"
    sha256 "376415c787aef391a3927cdecd5bb0dac9f21ef9d7742516b8cd8d8ce502e7b6"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "0.37.0"
    sha256 "73a44595dc36b3aab6bd92e4426ede3478c5dd2d5cf8ca446b110ce520f12e47"

    livecheck do
      url "https://laboratory.stolendata.net/~djinn/mpv_osx/"
      regex(/mpv[._-]v?(\d+(?:\.\d+)+)\.t/i)
    end
  end

  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz",
      verified: "laboratory.stolendata.net/~djinn/mpv_osx/"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

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
