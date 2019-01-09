cask 'doomsday-engine' do
  version '2.1.0'
  sha256 '4f2e840bb51c989b470c8729f7c5fe21b549825099b15cc2f6448e16fced4146'

  url "https://files.dengine.net/archive/doomsday_#{version}_x86_64.dmg"
  appcast 'http://api.dengine.net/1/builds/feed'
  name 'Doomsday Engine'
  homepage 'https://dengine.net/'

  app 'Doomsday.app'
  app 'Doomsday Shell.app'
end
