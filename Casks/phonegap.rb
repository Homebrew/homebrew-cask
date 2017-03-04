cask 'phonegap' do
  version '0.4.3'
  sha256 '43076b27d96f2ed31fbbdc0a6e23331caf1583a8cb3c2ae2026f9fa3d94d7944'

  # github.com/phonegap/phonegap-app-desktop was verified as official when first introduced to the cask
  url "https://github.com/phonegap/phonegap-app-desktop/releases/download/#{version}/PhoneGapDesktop.dmg"
  appcast 'https://github.com/phonegap/phonegap-app-desktop/releases.atom',
          checkpoint: '60009a43e006c53790bfce55051e3bdb7f410cdfd042922a70c49d80ad4b8029'
  name 'PhoneGap Desktop App'
  homepage 'http://phonegap.com/'

  app 'PhoneGap.app'
end
