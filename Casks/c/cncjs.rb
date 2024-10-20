cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.10.4"
  sha256 arm:   "a8935c64d03d1cd1e935e48fb08cb25d27b619f4b334cdb1893c0b5557f01232",
         intel: "9441314ba51fceff5d669ad6c95e2d808dc9eec85ad9438b61a81b2d158dc173"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos-#{arch}.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "CNCjs.app"
end
