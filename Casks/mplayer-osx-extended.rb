cask "mplayer-osx-extended" do
  version "rev16"
  sha256 "a52eae9a685a4d9854a5f989c4eb1e94b3f97b8c25a0e36ad4cdbc610fdf1023"

  # github.com/sttz/MPlayer-OSX-Extended/ was verified as official when first introduced to the cask
  url "https://github.com/sttz/MPlayer-OSX-Extended/releases/download/#{version}/MPlayer-OSX-Extended_#{version}.zip"
  appcast "https://github.com/sttz/MPlayer-OSX-Extended/releases.atom"
  name "MPlayer OSX Extended"
  desc "Video player thats uses MPlayer as backend"
  homepage "https://mplayerosx.ch/"

  app "MPlayer OSX Extended.app"

  zap trash: "~/.mplayer"
end
