cask 'rodeo' do
  version '2.1.1'
  sha256 '6c4d7975ba42db73151592798aa71be90d98828a46def645dcc7c6c10e832747'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: '2ada55b2a17e1d43d9af36cd26256a8b256d49e7909e9fa6f603f915f6a4b45d'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :affero

  app 'Rodeo.app'
end
