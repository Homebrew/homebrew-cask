cask 'stellarium' do
  version '0.18.0'
  sha256 'ef2fffc09d1b0334939ce05a8ddbd732a2e55bc5cef8258dd22bbc948f259522'

  # github.com/Stellarium/stellarium was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}.dmg"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom',
          checkpoint: 'f4dae1b70dd0f7d85f2a9c185b996225c826d5ece2e0538ef7fb35bf79bcd1f6'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
