cask 'insync' do
  version '3.0.14.40220'
  sha256 '1dfc1d79ea35899c98d7b490f03ea49a32cdd59174734cd7097c36281c676f3d'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
