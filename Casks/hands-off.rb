cask 'hands-off' do
  version '3.2.3'
  sha256 'd0bd5bc3085ab68f3f02ab8f3eac1e291ddba879c131aae2d523d1ba50c09c7a'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: '06fc57c034f4563e17ead4dfd359c94ebcb380f71dcd3eaf2c68fb88400b0387'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap delete: '~/Library/Preferences/com.metakine.handsoff.plist'
end
