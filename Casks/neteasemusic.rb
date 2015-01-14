# encoding: UTF-8
cask :v1 => 'neteasemusic' do
  version :latest
  sha256 :no_check

  url "http://music.163.com/api/osx/download/latest"
  homepage 'http://music.163.com/#/download'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NeteaseMusic.app'
end
