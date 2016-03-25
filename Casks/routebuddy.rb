cask 'routebuddy' do
  version '4.2.1'
  sha256 '95d979d775ebfbd5c835150d50c809fdb8f5e29823b54a13deec73b6df21c643'

  # dreamhost.com is the official download host per the vendor homepage
  url "https://objects.dreamhost.com/routebuddy/download/apps/RouteBuddy_#{version}.dmg"
  name 'RouteBuddy'
  homepage 'http://routebuddy.com/'
  license :commercial

  app 'RouteBuddy.app'
end
