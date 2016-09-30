cask 'evernote' do
  if MacOS.version <= :snow_leopard
    version '5.5.2'
    sha256 '06b6da6d74ccab08deabfdd4c9519b9bc7f7ef0f0db2a0e8b0cd72e781f2e0ed'
    url 'https://cdn1.evernote.com/mac/release/Evernote_402634.dmg'
  else
    version '6.9.1_454120'
    sha256 '4d4c72a6d28cf71eac93047e75ac386a34230490477e0343b58cf2311c053d1a'
    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
    appcast 'https://update.evernote.com/public/ENMacSMD/EvernoteMacUpdate.xml',
            checkpoint: 'd719da21460870303f5e5373b934cdcdeb658e5583bda524bcb6138bdcade2cc'
  end

  name 'Evernote'
  homepage 'https://evernote.com/'
  license :gratis

  auto_updates true

  app 'Evernote.app'
end
