cask 'phonegap' do
  version '0.4.4'
  sha256 'de491f77e3e55c01329e4d48c9ff02003058e6824e1a4cf971f92c128a94c145'

  # github.com/phonegap/phonegap-app-desktop was verified as official when first introduced to the cask
  url "https://github.com/phonegap/phonegap-app-desktop/releases/download/#{version}/PhoneGapDesktop.dmg"
  appcast 'https://github.com/phonegap/phonegap-app-desktop/releases.atom',
          checkpoint: 'a22f431f89e2f07e275af34231ca8bf28e7035cddde8de4c3a86c3dea125fe49'
  name 'PhoneGap Desktop App'
  homepage 'https://phonegap.com/'

  app 'PhoneGap.app'
end
