cask 'squire' do
  version '1.5.7'
  sha256 '3cfa37fa0a5cdf64d4a936d044b5fa35ef39c728db439d5e34d83795415c6297'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/Squire_Mac_Builds/Squire_Mac_#{version.dots_to_underscores}.zip"
  appcast 'http://www.sylion.com/squireapp/sparkle/SquireMac/appcastSquireMac.xml',
          checkpoint: '4f7ea01207cca2fa14f1b6c82e6eb35500715ddeaa15258a5dccdbb05f0edb72'
  name 'Squire'
  homepage 'http://squireapp.com'
  license :commercial

  app 'Squire.app'
end
