cask "mpv@nightly" do
  version :latest
  sha256 :no_check

  on_arm do
    on_sonoma do
      arch arm: "14-arm"
    end
    on_sequoia do
      arch arm: "15-arm"
    end
    depends_on macos: ">= :sonoma"
  end
  on_intel do
    arch intel: "13-intel"

    depends_on macos: :ventura
  end

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-macos-#{arch}.zip",
      verified: "nightly.link/mpv-player/mpv/"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  conflicts_with formula: ["mpv"], cask: ["stolendata-mpv"]

  app "mpv.app"
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"

  zap trash: [
    "~/.config/mpv",
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end
