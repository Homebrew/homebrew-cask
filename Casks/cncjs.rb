cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.10.1"
  sha256 arm:   "72210f0ac5df29758fc2da189585421d579500681f94db7b60e3440f645a51cd",
         intel: "070f9a6fdc2a953569389543cc4553423bed1f055a21bcb80f1b6055dbcbf2cf"

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
