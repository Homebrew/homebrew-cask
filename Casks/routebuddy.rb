cask "routebuddy" do
  version "4.2.1"
  sha256 "95d979d775ebfbd5c835150d50c809fdb8f5e29823b54a13deec73b6df21c643"

  url "https://objects-us-east-1.dream.io/routebuddy/download/apps2/RouteBuddy_#{version}.dmg",
      verified: "objects-us-east-1.dream.io/routebuddy/"
  name "RouteBuddy"
  desc "GPS-enabled mapping software"
  homepage "http://routebuddy.com/"

  livecheck do
    url "http://routebuddy.com/routebuddy-topo-map-software-for-windows-and-mac-os-x/"
    regex(%r{href=.*?/RouteBuddy_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "RouteBuddy.app"

  zap trash: [
    "~/Library/Application Support/RouteBuddy",
    "~/Library/Caches/RouteBuddy",
    "~/Library/Preferences/com.routebuddy.routebuddy.plist",
  ]
end
