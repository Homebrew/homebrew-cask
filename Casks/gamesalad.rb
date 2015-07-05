cask :v1 => 'gamesalad' do
  version '0.13.27'
  sha256 '16bd7e122addd5dc88910262c65a1d66866a24c5ee87a926460e974e3dc93a46'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://gs.releases.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}-beta.dmg"
  name 'GameSalad'
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => '5692ec5271176e2eb7dc7c1942f0202cba590cccf181dfd45cfd440b9f2a96a9'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
