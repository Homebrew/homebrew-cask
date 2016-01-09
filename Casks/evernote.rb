cask 'evernote' do
  if MacOS.release <= :snow_leopard
    version '5.5.2'
    sha256 '06b6da6d74ccab08deabfdd4c9519b9bc7f7ef0f0db2a0e8b0cd72e781f2e0ed'
    url 'https://cdn1.evernote.com/mac/release/Evernote_402634.dmg'
  else
    version '6.4_452969'
    sha256 'f3c67de7f57a7201b1331e11eb20d9f006956009a86345b2d5d34dd40cb329db'
    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
    appcast 'https://update.evernote.com/public/ENMac/EvernoteMacUpdate.xml',
            :sha256 => '8655d29b6738a0f9f8d3109f11a4e7387c9cca6b44f682ce22dcfada99b08f32'
  end

  name 'Evernote'
  homepage 'https://evernote.com/'
  license :gratis

  app 'Evernote.app'
end
