cask "mpv" do
  version "0.34.1"
  sha256 "399636ca54ad3633c5264ca3744211716832636f8bb04d0494568259cdea1bfd"

  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz",
      verified: "laboratory.stolendata.net/~djinn/mpv_osx/"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  livecheck do
    url "https://laboratory.stolendata.net/~djinn/mpv_osx/"
    strategy :page_match
    regex(/mpv-(\d+(?:\.\d+)+)\.tar\.gz/i)
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
