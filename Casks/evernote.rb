cask 'evernote' do
  if MacOS.version <= :snow_leopard
    version '5.5.2'
    sha256 '06b6da6d74ccab08deabfdd4c9519b9bc7f7ef0f0db2a0e8b0cd72e781f2e0ed'
    url 'https://cdn1.evernote.com/mac/release/Evernote_402634.dmg'
  else
    version '6.10_454267'
    sha256 '44d44b402c547a01a8a4fe377558e95669bf5771387e2ddfe85e58ce5b122946'
    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
    appcast 'https://update.evernote.com/public/ENMacSMD/EvernoteMacUpdate.xml',
            checkpoint: '163dd5bfdef899742f67114eca8dc59cd31c153f8d542d80fd53a4a7e2b25303'
  end

  name 'Evernote'
  homepage 'https://evernote.com/'

  auto_updates true

  app 'Evernote.app'
end
