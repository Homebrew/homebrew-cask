cask 'mos' do
  version '2.0.0'
  sha256 '04d3dda5f598994354d2c2c09191cc5cffad4a066a2dac4e546782f58c053361'

  # github.com/Caldis/Mos was verified as official when first introduced to the cask
  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Version.#{version}.dmg"
  appcast 'https://github.com/Caldis/Mos/releases.atom',
          checkpoint: 'be74629b2b97a2e4f13e502c8609777a211ad2f42b502df8a193e1541b7921ce'
  name 'Mos'
  homepage 'http://mos.caldis.me/'

  app 'Mos.app'

  zap trash: '~/Library/Preferences/com.caldis.Mos.plist'
end
