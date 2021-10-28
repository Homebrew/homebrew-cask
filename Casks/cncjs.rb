cask "cncjs" do
  version "1.9.23"
  sha256 "2de514db5ade63c858cd2f4ca768cbc3b5002940cb559a3d4d2d0740b28282c1"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos.x64.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  app "CNCjs.app"
end
