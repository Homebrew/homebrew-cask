cask 'evernote' do
  if MacOS.release <= :snow_leopard
    version '5.5.2'
    sha256 '06b6da6d74ccab08deabfdd4c9519b9bc7f7ef0f0db2a0e8b0cd72e781f2e0ed'
    url 'https://cdn1.evernote.com/mac/release/Evernote_402634.dmg'
  else
    version '6.6_453293'
    sha256 '4aca519788b4f0a4f9fd5637499836cd967d432148703f7014f32b289f688ef4'
    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
    appcast 'https://update.evernote.com/public/ENMac/EvernoteMacUpdate.xml',
            checkpoint: 'abf7888f90998b0fd516b14c3fc61c69f7bdec9b325fd890da276c7001c1fa60'
  end

  name 'Evernote'
  homepage 'https://evernote.com/'
  license :gratis

  auto_updates true

  app 'Evernote.app'
end
