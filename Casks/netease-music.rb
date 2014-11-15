# encoding: UTF-8
cask :v1 => 'netease-music' do
  version :latest
  sha256 :no_check

  url "http://music.163.com/api/osx/download/latest"
  homepage 'http://music.163.com/#/download'
  license :unknown

  app 'Music.163.app'
end
