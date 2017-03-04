cask 'hirundo' do
  version '0.9.9'
  sha256 '5db56b8b09ac199174af5d11aa9f21495900ec7d483150462fc981dd454b3819'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  appcast 'https://stylemac.com/hirundo/versions/current.json',
          checkpoint: '5ec297365103f72748b17c82ac6b573ea1df85f0c31aa6ae967b056f7b894f78'
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'

  app 'Hirundo.app'
end
