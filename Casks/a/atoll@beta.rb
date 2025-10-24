cask "atoll" do
  version "1.0.1-beta"
  sha256 "fe4a5feffbc77f6abf4efc0a8ea35879297f4b7ce6ea5905b35648d73dcff9ab"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v#{version}/DynamicIsland_v#{version}.dmg"
  name "Atoll"
  desc "Atoll transforms the MacBook notch into an interactive command surface that unifies media control, live telemetry, and productivity tools in a single SwiftUI experience."
  homepage "https://github.com/Ebullioscopic/Atoll"

  app "DynamicIsland.app"
end
