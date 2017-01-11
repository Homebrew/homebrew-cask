cask 'gamesalad' do
  version '1.25.79'
  sha256 'a7f26e3a5c9eaac840b9289bd830a04b2cc5f7e17279ea9ab0bd754208a5c3f0'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          checkpoint: '27d76c980564546b358fa0763f5ac319180f3f980a2ea7f017c8247871d9a2ec'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
