cask 'squire' do
  version '1.5.7'
  sha256 'a543f006ee04630397f1316a5599d5944445f0bf232239fa50c791a33cc387c9'

  # amazonaws.com/squire was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/squire/builds/Squire.dmg'
  appcast 'http://www.sylion.com/squireapp/sparkle/SquireMac/appcastSquireMac.xml',
          checkpoint: '4f7ea01207cca2fa14f1b6c82e6eb35500715ddeaa15258a5dccdbb05f0edb72'
  name 'Squire'
  homepage 'http://squireapp.com'

  app 'Squire.app'
end
