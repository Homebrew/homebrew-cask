cask :v1 => 'gamesalad' do
  version '1.24.35'
  sha256 'f20cfc5a917c2ae351043fe10df7210e0347de77ec5c08afa10a9a8b1a876e96'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://gs.releases.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  name 'GameSalad'
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => '541f9c62a737ab60535a02f2ae95294e5458eb096cab5a17b7ac0ad76a3ceee7'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
