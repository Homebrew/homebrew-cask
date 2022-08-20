cask "cncjs" do
  version "1.9.27"
  sha256 "3e112f318498c5b9fdc160e21a31c2322e89db947585e36bf8c7434009e90a63"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos.x64.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  app "CNCjs.app"
end
