class Dropbox < Cask
  url 'https://www.dropbox.com/download?plat=mac'
  homepage 'http://www.dropbox.com/'
  version 'latest'
  no_checksum
  link :app, 'Dropbox.app'
end
