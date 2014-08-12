class Calibre < Cask
  version 'latest'
  sha256 :no_check

  url 'http://status.calibre-ebook.com/dist/osx32'
  homepage 'http://calibre-ebook.com/'

  link 'calibre.app'
end
