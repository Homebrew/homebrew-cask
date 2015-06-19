cask :v1 => 'gamesalad' do
  version '0.13.20'
  sha256 '1e3b7781613deeaa891f5cb56e4bc88df165cddd74f6b34995184c62f8407d6d'

  url "http://gs.releases.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}-beta.dmg"
  name 'GameSalad'
  appcast 'http://gamesalad.com/download/studioUpdates',
          :sha256 => '8f2642104685766ee92b8eb42223f04338d573d6b68c9edb08889512e38a9c80'
  homepage 'http://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
