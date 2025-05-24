cask "stolendata-mpv" do
  arch arm: "-arm64"

  on_arm do
    version "0.40.0"
    sha256 "3170fb709defebaba33e9755297d70dc3562220541de54fc3d494a8309ef1260"

    livecheck do
      url "https://laboratory.stolendata.net/~djinn/mpv_osx/"
      regex(/mpv-arm64-(\d+(?:\.\d+)+)\.t/i)
    end

    depends_on macos: ">= :sonoma"

    app "mpv#{arch}-#{version}/mpv.app"
    manpage "mpv#{arch}-#{version}/documentation/man/mpv.1"
  end
  on_intel do
    on_catalina :or_older do
      version "0.35.0"
      sha256 "376415c787aef391a3927cdecd5bb0dac9f21ef9d7742516b8cd8d8ce502e7b6"

      livecheck do
        skip "Legacy version"
      end
    end
    on_big_sur :or_newer do
      version "0.39.0"
      sha256 "35ec81ad86a97b24956a8d0f4fa1ba2690b44ae7741c920e923620bcd7bd402a"

      livecheck do
        url "https://laboratory.stolendata.net/~djinn/mpv_osx/"
        regex(/mpv-(\d+(?:\.\d+)+)\.t/i)
      end
    end

    depends_on macos: ">= :mojave"

    app "mpv.app"
    manpage "documentation/man/mpv.1"
  end

  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv#{arch}-#{version}.tar.gz",
      verified: "laboratory.stolendata.net/~djinn/mpv_osx/"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  conflicts_with formula: "mpv"

  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"

  zap trash: [
    "~/.config/mpv",
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end
