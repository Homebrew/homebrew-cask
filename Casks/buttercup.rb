cask 'buttercup' do
  version '1.16.0'
  sha256 '5add60cd1fa14d29d83447600dc12e2db4256e4fff6a7f4df68934dd0a3dc78d'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
