cask :v1 => 'gamesalad' do
  version '0.13.26'
  sha256 '6b8c7daf37eb129580937c46e5a1e728b1569ee1363a0d6a5da88edf4c93666b'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://gs.releases.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}-beta.dmg"
  name 'GameSalad'
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => '576b621cf3860d1f95d518465d1149fdaeab0b6935531e722e2959c6beb969b2'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
