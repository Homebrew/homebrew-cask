cask "routebuddy" do
  version "4.2.1"
  sha256 "95d979d775ebfbd5c835150d50c809fdb8f5e29823b54a13deec73b6df21c643"

  # objects-us-east-1.dream.io/routebuddy/ was verified as official when first introduced to the cask
  url "https://objects-us-east-1.dream.io/routebuddy/download/apps2/RouteBuddy_#{version}.dmg"
  appcast "https://routebuddy.com/routebuddy-topo-map-software-for-windows-and-mac-os-x/"
  name "RouteBuddy"
  homepage "https://routebuddy.com/"

  app "RouteBuddy.app"
end
