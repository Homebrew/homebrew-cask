cask "font-lxgw-heartserif" do
  version "0.922"
  sha256 "d30850434c6447ee04acd3044b0086313ec8748a75f550985fd3a7eeb84f802b"

  url "https://github.com/lxgw/LxgwNeoZhiSong/releases/download/v#{version}/LXGWHeartSerif.ttf"
  name "LXGW Heart Serif"
  name "霞鹜铭心宋"
  desc "Chinese serif font derived from IPAmj Mincho"
  homepage "https://github.com/lxgw/LxgwNeoZhiSong"

  font "LXGWHeartSerif.ttf"

  # No zap stanza required
end
