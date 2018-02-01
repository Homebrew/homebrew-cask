cask 'nteract' do
  version '0.6.2'
  sha256 'ef1e3a15cace72fef2df9ba72861d0b1318f2cec5369a22b3dc7858dc869e971'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '5322852157274f404bbd3d18537af9d2d809246fee197c9186d4a2d7255d611b'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
