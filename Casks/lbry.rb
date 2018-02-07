cask 'lbry' do
  version '0.20.0'
  sha256 'd67d6d44e4f30df1a3050a3228a9c0e656d4d1bfb87d30f7697b5fe13a4d3b16'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom',
          checkpoint: 'f09f598f481acc85bac012f9d370ba8f10ca5c43056b1f400b7e367077ccca3c'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
