cask 'rodeo' do
  version '2.0.0'
  sha256 'd9dfba1f62934e4ec7c80c4bfd0d4b77ddec63254f9d14b7cc867c0c20d5baf1'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: '900acf0852da14c0d38a73345f82cfa37a951123af8dac9dce0cacb8a35b61fc'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :affero

  app 'Rodeo.app'
end
