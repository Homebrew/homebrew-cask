cask 'evernote' do

  if MacOS.release <= :snow_leopard
    version '5.5.2'
    sha256 '06b6da6d74ccab08deabfdd4c9519b9bc7f7ef0f0db2a0e8b0cd72e781f2e0ed'
    url 'https://cdn1.evernote.com/mac/release/Evernote_402634.dmg'
  else
    version '6.3_452832'
    sha256 'ba6282c57bee35506f3ac8dc35d12398a4e1879b88f1ecc3fa0f158e75a503e8'
    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
    appcast 'https://update.evernote.com/public/ENMac/EvernoteMacUpdate.xml',
            :sha256 => 'f8c24274d07b0205e8344d33aec11e7a08d63df27614802836d292cad65c76d5'
  end

  name 'Evernote'
  homepage 'https://evernote.com/'
  license :gratis

  app 'Evernote.app'
end
