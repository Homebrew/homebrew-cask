cask :v1 => 'gamesalad' do
  version '1.23.1'
  sha256 '7dc668dd8dc0ce509f315b7f31c83cf258201b5af829ede8d65bfa425d053bd6'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://gs.releases.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  name 'GameSalad'
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => '541f9c62a737ab60535a02f2ae95294e5458eb096cab5a17b7ac0ad76a3ceee7'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
