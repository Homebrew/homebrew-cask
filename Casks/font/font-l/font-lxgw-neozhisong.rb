cask "font-lxgw-neozhisong" do
  version "1.071"
  sha256 "fd5856f9e43513ab1ed6e50abd057b37b50f15faae1ff292c028049f168cb44f"

  url "https://github.com/lxgw/LxgwNeoZhiSong/releases/download/v#{version}/LXGWNeoZhiSong.ttf"
  name "LXGW Neo ZhiSong"
  name "霞鹜新致宋"
  homepage "https://github.com/lxgw/LxgwNeoZhiSong"

  font "LXGWNeoZhiSong.ttf"

  zap :not_required
end
