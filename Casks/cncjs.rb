cask "cncjs" do
  version "1.9.27"
  sha256 "60d8d886a57768d6d213d728c63a6ce2833af9efc6c93b1d80a888a56afbf283"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos.x64.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CNCjs.app"
end
