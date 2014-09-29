class Neteasemusic < Cask
  version :latest
  sha256 :no_check

  url 'http://music.163.com/api/osx/download/latest'
  homepage 'http://music.163.com/'

  app 'Music.163.app'
end
