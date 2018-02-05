cask 'buttercup' do
  version '0.26.0'
  sha256 '168455ef1f31d81b53c0801e8f70ca912f92394bdc42d5e3eda683cc2c5dc441'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '687ecb97b94c0c456566bf92dde048daf80d2b8136e74a12ef21b8723ee4df18'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
