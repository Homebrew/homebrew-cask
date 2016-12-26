cask 'macbreakz' do
  version '5.30'
  sha256 '9b1aac4d1f7888c4cfe2043d937b6d8ee5cae610bc19cf545bcd7929c3d5ca46'

  url "http://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_mb#{version.major}.xml",
          checkpoint: '23f424d150828f3bae58c422517ea2268fc6f8c7bfcccbec2b7e342292d1cfd4'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'

  app "MacBreakZ #{version.major}.app"
end
