cask 'autobeat-player' do
  version '1.0.5'
  sha256 '900545877acc66a17eeed28a0269b7be8ec1525c8f0b1d2ce25da5e8d5070177'

  # hytag.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://hytag.s3.amazonaws.com/autobeat/desktop/Autobeat+Player-#{version}.dmg"
  name 'Autobeat Player'
  homepage 'http://www.autobeatplayer.com/'

  app 'Autobeat Player.app'
end
