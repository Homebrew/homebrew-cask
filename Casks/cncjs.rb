cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.10.2"
  sha256 arm:   "8cd5d0c80511ecf53bcb4951f7eeb469bcf9342557edd89b82dbb3b1b5564e0c",
         intel: "70f8cf9c28f25788a4c39c5fe4444cc37fd604a2067f4e0632ed58848f2fbad3"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos-#{arch}.dmg",
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
