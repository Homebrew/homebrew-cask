cask 'mos' do
  version '2.0.0'
  sha256 '04d3dda5f598994354d2c2c09191cc5cffad4a066a2dac4e546782f58c053361'

  # github.com/Caldis/Mos was verified as official when first introduced to the cask
  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Version.#{version}.dmg"
  appcast 'https://github.com/Caldis/Mos/releases.atom',
          checkpoint: '227c55156ad8d2ce6376806cb25f7c6aeef4e5f33ff2cdd1576eb9ffc4ef56a1'
  name 'Mos'
  homepage 'https://mos.caldis.me/'

  app 'Mos.app'

  zap trash: '~/Library/Preferences/com.u2sk.Mos.plist'
end
