cask 'nocturne' do
  version '3.0'
  sha256 '895ac0c5493b3877cf1cc6d62dfb5c0fee3c6bd41d44bd3c87554e52a0cf1462'

  url "https://github.com/Daij-Djan/nocturne/blob/master/Dist/#{version}.zip?raw=true"
  appcast 'https://raw.githubusercontent.com/Daij-Djan/nocturne/master/README.md',
          checkpoint: '1d30cbaa07a0f631bf9ed0c2dfd205bf896c7fe1f3d4246cd34c4ead90ee5448'
  name 'Nocturne'
  homepage 'https://github.com/Daij-Djan/nocturne'

  app 'Nocturne.app'
end
