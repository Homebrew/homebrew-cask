cask :v1 => 'gamesalad' do
  version '0.13.23'
  sha256 '3d340d1bed34e750477f978ca09e37090f959d1c1ccb8b66184c89d2a1dad73a'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://gs.releases.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}-beta.dmg"
  name 'GameSalad'
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => '620516c35dc6c5abcb475eccf8d29af953225fb6990ac85d00779ae68ddd383a'
  homepage 'http://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
