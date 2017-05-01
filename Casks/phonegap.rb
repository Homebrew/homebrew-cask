cask 'phonegap' do
  version '0.4.4'
  sha256 'de491f77e3e55c01329e4d48c9ff02003058e6824e1a4cf971f92c128a94c145'

  # github.com/phonegap/phonegap-app-desktop was verified as official when first introduced to the cask
  url "https://github.com/phonegap/phonegap-app-desktop/releases/download/#{version}/PhoneGapDesktop.dmg"
  appcast 'https://github.com/phonegap/phonegap-app-desktop/releases.atom',
          checkpoint: 'd7d06c24e40da4ca8aa8ea1891b6f659edae4c8390778a4c4d2b9894f3d5f84c'
  name 'PhoneGap Desktop App'
  homepage 'http://phonegap.com/'

  app 'PhoneGap.app'
end
