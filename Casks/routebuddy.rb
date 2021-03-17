cask "routebuddy" do
  version "4.2.1"
  sha256 "95d979d775ebfbd5c835150d50c809fdb8f5e29823b54a13deec73b6df21c643"

  url "https://objects-us-east-1.dream.io/routebuddy/download/apps2/RouteBuddy_#{version}.dmg",
      verified: "objects-us-east-1.dream.io/routebuddy/"
  name "RouteBuddy"
  homepage "https://routebuddy.com/"

  livecheck do
    url "https://routebuddy.com/routebuddy-topo-map-software-for-windows-and-mac-os-x/"
    strategy :page_match
    regex(%r{href=.*?/RouteBuddy_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "RouteBuddy.app"
end
