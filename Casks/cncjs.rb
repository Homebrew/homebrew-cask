cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "7969cfac5426d9867b2ed8472f5934f89b39b3f9af539eaa9f53131280eef706",
         intel: "8abbb51a38ad188cfd6371be2c42eb3a6f7734a9bf91723b98e2f8f01dda9b2d"

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
