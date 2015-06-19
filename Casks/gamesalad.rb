cask :v1 => 'gamesalad' do
  version '0.13.22'
  sha256 '4f8672e2f2b7763c6b057aa6238d5289fbb600988ace37db7bfa7c022876c13a'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://gs.releases.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}-beta.dmg"
  name 'GameSalad'
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => 'b2f1f4c2a63bc553ab714aca3c92340b0e6612bdab13349459aa344934cdb298'
  homepage 'http://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
