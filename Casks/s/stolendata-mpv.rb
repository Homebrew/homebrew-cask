cask "stolendata-mpv" do
  label = nil

  on_arm do
    on_ventura :or_older do
      version "0.39.0"
      sha256 "35ec81ad86a97b24956a8d0f4fa1ba2690b44ae7741c920e923620bcd7bd402a"

      caveats do
        requires_rosetta
      end
    end
    on_sonoma :or_newer do
      arch arm: "-arm64"
      label = on_arch_conditional arm: "mpv#{arch}-VERSION/"

      version "0.40.0"
      sha256 "3170fb709defebaba33e9755297d70dc3562220541de54fc3d494a8309ef1260"
    end
  end
  on_intel do
    version "0.39.0"
    sha256 "35ec81ad86a97b24956a8d0f4fa1ba2690b44ae7741c920e923620bcd7bd402a"
  end

  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv#{arch}-#{version}.tar.gz"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  livecheck do
    url "https://laboratory.stolendata.net/~djinn/mpv_osx/"
    regex(/mpv#{arch}-(\d+(?:\.\d+)+)\.t/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  folder = label&.sub("VERSION", version)

  app "#{folder}mpv.app"
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"
  manpage "#{folder}documentation/man/mpv.1"

  zap trash: [
    "~/.config/mpv",
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end
