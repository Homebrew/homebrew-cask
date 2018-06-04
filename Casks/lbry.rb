cask 'lbry' do
  version '0.21.5'
  sha256 '1c72b03991dd9deff4b2355a59297d302451fb39047905f8b7a84f9a0d94dfb8'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom',
          checkpoint: '71cdfb6985b94b2558790e7a8dd16a9384b8d069b38a70e91d17413b00f07c27'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
