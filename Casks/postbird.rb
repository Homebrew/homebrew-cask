cask 'postbird' do
  version '0.6.1'
  sha256 '1cd2d31b0f316a1abfb112d795b6072b0baa98a54b1ae18733e2c00673db8244'

  url "https://github.com/Paxa/postbird/releases/download/#{version}/Postbird-#{version}.dmg"
  appcast 'https://github.com/Paxa/postbird/releases.atom',
          checkpoint: '4241621f2803ef1ba254b8cb5a5c436eb6359bc173bc2b0ec64389eb87f25c8d'
  name 'Postbird'
  homepage 'https://github.com/Paxa/postbird'

  app 'Postbird.app'
end
