cask 'gamesalad' do
  version '1.25.88'
  sha256 'aa66de6dff3818b0a1a620054d5d6204b66e473eaaa95e61b4e6541edf4ff7ae'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          checkpoint: 'ad5557b867aaf93dd6e7cad6952a244445794de703c055a5da8bffaabb654a51'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
