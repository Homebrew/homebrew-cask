cask "font-lxgw-heartserif" do
  version "0.923.2"
  sha256 "d55f5aaae58119de6a0d5b36baa72926f2d972e22712740adb59ffec8a98e688"

  url "https://github.com/lxgw/LxgwNeoZhiSong/releases/download/v#{version}/LXGWHeartSerif.ttf"
  name "LXGW Heart Serif"
  name "霞鹜铭心宋"
  desc "Chinese serif font derived from IPAmj Mincho"
  homepage "https://github.com/lxgw/LxgwNeoZhiSong"

  font "LXGWHeartSerif.ttf"

  # No zap stanza required
end
