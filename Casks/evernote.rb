cask :v1 => 'evernote' do
  version :latest
  sha256 :no_check

  url 'https://www.evernote.com/about/download/get.php?file=EvernoteMac'
  appcast 'http://update.evernote.com/public/ENMac/EvernoteMacUpdate.xml'
  homepage 'https://evernote.com/'
  license :unknown

  app 'Evernote.app'
end
