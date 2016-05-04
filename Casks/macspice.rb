cask 'macspice' do
  version '3.1.11'
  sha256 '3f9b8a520807cff4787d675922a57403658f46ab7f6322e83846b22adabd2ea7'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: '948ae4a79ae053b98b09d6463cfdaccf4d3ec1956f0781d50c48dcc0eb8f1663'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'
  license :closed

  app 'MacSpice.app'
end
