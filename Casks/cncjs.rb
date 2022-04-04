cask "cncjs" do
  version "1.9.24"
  sha256 "79b35d79f369f3ed021caa61ca4565ae03848e8d03b1929f35126cca168d44e7"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos.x64.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  app "CNCjs.app"
end
