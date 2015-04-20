cask :v1 => 'routebuddy' do
  version '4.2.1'
  sha256 '95d979d775ebfbd5c835150d50c809fdb8f5e29823b54a13deec73b6df21c643'

  url 'https://objects.dreamhost.com/routebuddy/download/apps/RouteBuddy_4.2.1.dmg'

  name 'RouteBuddy'
  homepage 'http://routebuddy.com/'
  license :commercial

  app 'RouteBuddy.app'
end
