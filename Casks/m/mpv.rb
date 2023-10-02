cask "mpv" do
  on_mojave :or_older do
    version "0.35.0"
    sha256 "376415c787aef391a3927cdecd5bb0dac9f21ef9d7742516b8cd8d8ce502e7b6"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "0.36.0"
    sha256 "3355de90753efa3f1e4e8f4cbe16066e4753eaebf1903dfa47961a37eb4dea75"

    livecheck do
      url "https://laboratory.stolendata.net/~djinn/mpv_osx/"
      regex(/mpv-(\d+(?:\.\d+)+)\.t/i)
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
