cask 'autobeat-player' do
  version '1.0.5'
  sha256 '900545877acc66a17eeed28a0269b7be8ec1525c8f0b1d2ce25da5e8d5070177'

  # amazonaws.com/hytag/autobeat was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/hytag/autobeat/desktop/Autobeat+Player-#{version}.dmg"
  name 'Autobeat Player'
  homepage 'http://www.autobeatplayer.com/'

  app 'Autobeat Player.app'
end
