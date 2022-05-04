cask "cncjs" do
  version "1.9.25"
  sha256 "f4f3ad44ff6b94fb3b3374b6130830ddafb5bbd00e62e585e49aa9f5284a542c"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos.x64.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  app "CNCjs.app"
end
