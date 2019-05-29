cask 'doomsday-engine' do
  version '2.1.1'
  sha256 '144a98dc5ff99f84b92556295f750e5b9d3fbcdcc235082dec9da7fcff1bcb58'

  url "https://files.dengine.net/archive/doomsday_#{version}_x86_64.dmg"
  appcast 'http://api.dengine.net/1/builds/feed'
  name 'Doomsday Engine'
  homepage 'https://dengine.net/'

  app 'Doomsday.app'
  app 'Doomsday Shell.app'
end
