cask "cncjs" do
  version "1.9.26"
  sha256 "65978898ce35c5a71c9c4999addf7db6b769022f177d53457ecd6ca032b07798"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos.x64.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  app "CNCjs.app"
end
