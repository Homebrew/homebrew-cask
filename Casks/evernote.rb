cask :v1 => 'evernote' do

  if MacOS.release <= :snow_leopard
    version '5.5.2'
    sha256 '06b6da6d74ccab08deabfdd4c9519b9bc7f7ef0f0db2a0e8b0cd72e781f2e0ed'
    url 'http://cdn1.evernote.com/mac/release/Evernote_402634.dmg'
  else
    version :latest
    sha256 :no_check
    url 'https://www.evernote.com/about/download/get.php?file=EvernoteMac'
    appcast 'http://update.evernote.com/public/ENMac/EvernoteMacUpdate.xml'
  end

  homepage 'https://evernote.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Evernote.app'
end
