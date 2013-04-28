class Evernote < Cask
  url 'http://www.evernote.com/about/download/get.php?file=EvernoteMac'
  homepage 'http://evernote.com/'
  version 'latest'
  no_checksum

  link :app, 'Evernote.app'
end
