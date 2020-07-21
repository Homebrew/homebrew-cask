cask 'buttercup' do
  version '1.20.4'
  sha256 'dd5fc94a51deb271befbd5092b2e1523511bec762a6e72423672d34efbc67f4d'

  # github.com/buttercup/buttercup-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}.dmg"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
