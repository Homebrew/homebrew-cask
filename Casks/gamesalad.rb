cask :v1 => 'gamesalad' do
  version '0.13.41'
  sha256 'ec19549deddb46e320354b9158f66586bcd5f43334c4cc272a45a702e2ecab14'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://gs.releases.s3.amazonaws.com/creator/#{version}/GameSalad-Creator-#{version}-beta.dmg"
  name 'GameSalad'
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => 'd82c182f2b11ec456e6c09e1f3f7430416c8938b67195f4239392918de0e6b62'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
