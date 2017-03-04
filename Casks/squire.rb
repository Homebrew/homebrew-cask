cask 'squire' do
  version '1.5.7'
  sha256 '36b5b895c287f3579839c42a20bc85b1ef2489d630881c533b440020f6a30375'

  # amazonaws.com/squire was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/squire/builds/Squire.dmg'
  appcast 'http://www.sylion.com/squireapp/sparkle/SquireMac/appcastSquireMac.xml',
          checkpoint: '4f7ea01207cca2fa14f1b6c82e6eb35500715ddeaa15258a5dccdbb05f0edb72'
  name 'Squire'
  homepage 'http://squireapp.com/'

  app 'Squire.app'
end
