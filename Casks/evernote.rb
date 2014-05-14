class Evernote < Cask
  url 'https://www.evernote.com/about/download/get.php?file=EvernoteMac'
  appcast 'http://update.evernote.com/public/ENMac/EvernoteMacUpdate.xml'
  homepage 'https://evernote.com/'
  version 'latest'
  sha256 :no_check
  link 'Evernote.app'
end
