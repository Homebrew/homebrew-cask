cask :v1 => 'gamesalad' do
  version '0.13.30'
  sha256 '0c0d9ceaf7cc92c59d7be18fc785dfd00d25c5b05999f1f1fe1dfbdec62c646b'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://gs.releases.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}-beta.dmg"
  name 'GameSalad'
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => '2040ea4abaea2e9e089bfb35feefe6d35b7601b1ddd51c81117e2fde46f23a77'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
