cask "mplayer-osx-extended" do
  version "16"
  sha256 "a52eae9a685a4d9854a5f989c4eb1e94b3f97b8c25a0e36ad4cdbc610fdf1023"

  url "https://github.com/sttz/MPlayer-OSX-Extended/releases/download/rev#{version}/MPlayer-OSX-Extended_rev#{version}.zip",
      verified: "github.com/sttz/MPlayer-OSX-Extended/"
  name "MPlayer OSX Extended"
  desc "Video player thats uses MPlayer as backend"
  homepage "https://mplayerosx.ch/"

  livecheck do
    url :url
    strategy :git
    regex(/^rev(\d+(?:\.\d+)*)$/i)
  end

  app "MPlayer OSX Extended.app"

  zap trash: "~/.mplayer"

  caveats do
    discontinued
  end
end
