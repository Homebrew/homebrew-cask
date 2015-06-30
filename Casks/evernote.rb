cask :v1 => 'evernote' do

  if MacOS.release <= :snow_leopard
    version '5.5.2'
    sha256 '06b6da6d74ccab08deabfdd4c9519b9bc7f7ef0f0db2a0e8b0cd72e781f2e0ed'
    url 'https://cdn1.evernote.com/mac/release/Evernote_402634.dmg'
  else
    version '6.0.15_451806'
    sha256 '3a3ea7a5ede74655dc19d625ba3b748ba50025443ddb4196c5b0e8815c7dafc3'
    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
    appcast 'https://update.evernote.com/public/ENMac/EvernoteMacUpdate.xml'
  end

  name 'Evernote'
  homepage 'https://evernote.com/'
  license :gratis

  app 'Evernote.app'
end
