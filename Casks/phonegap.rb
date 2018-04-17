cask 'phonegap' do
  version '0.4.5'
  sha256 '1158660f45637593d7721f2d50f2792ac8b1744950a37ca8072f29c9922efdf6'

  # github.com/phonegap/phonegap-app-desktop was verified as official when first introduced to the cask
  url "https://github.com/phonegap/phonegap-app-desktop/releases/download/#{version}/PhoneGapDesktop.dmg"
  appcast 'https://github.com/phonegap/phonegap-app-desktop/releases.atom',
          checkpoint: '5c95397080f6dc606a5710ddad2b773873e1cbea85f548429413eb07ee403b78'
  name 'PhoneGap Desktop App'
  homepage 'https://phonegap.com/'

  app 'PhoneGap.app'
end
