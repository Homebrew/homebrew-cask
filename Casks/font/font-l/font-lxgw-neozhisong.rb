cask "font-lxgw-neozhisong" do
  version "1.070"
  sha256 "c42000b59caffe8ccfcd1c90aa2841dcafa866cf24769cc1b10c3708c671f207"

  url "https://github.com/lxgw/LxgwNeoZhiSong/releases/download/v#{version}/LXGWNeoZhiSong.ttf"
  name "LXGW Neo ZhiSong"
  name "霞鹜新致宋"
  homepage "https://github.com/lxgw/LxgwNeoZhiSong"

  font "LXGWNeoZhiSong.ttf"

  zap :not_required
end
