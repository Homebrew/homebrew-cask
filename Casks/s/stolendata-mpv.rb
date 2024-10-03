cask "stolendata-mpv" do
  arch arm: "-arm64"

  on_arm do
    version "0.39.0"
    sha256 "9c81c5cf2e756cf9c2fef97a00627140ea7c6b46079469ce3b1a13b4cd4f5b2b"

    livecheck do
      url "https://laboratory.stolendata.net/~djinn/mpv_osx/"
      regex(/mpv-arm64-(\d+(?:\.\d+)+)\.t/i)
    end

    depends_on macos: ">= :sonoma"
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
  end

  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv#{arch}-#{version}.tar.gz",
      verified: "laboratory.stolendata.net/~djinn/mpv_osx/"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  conflicts_with formula: "mpv"

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
