cask 'hirundo' do
  version '0.8.5'
  sha256 '9fc8400b4e8764eec913b89dd99f3ed4668abfa77886672063c068bdb6f4564f'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  appcast 'https://stylemac.com/hirundo/versions/current.json',
          checkpoint: '5ec54e3e8a65e5d4709d7fd085049e98bcfb5aafdf67a9a454611b98b3a3f92f'
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'
  license :gratis

  app 'Hirundo.app'
end
