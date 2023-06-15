cask "electron-cash" do
  version "4.3.1"
  sha256 "fef55bf2d3bdc4dad2379c02197ba45157c020e69d21d58de01936ac005c677a"

  url "https://electroncash.org/downloads/#{version.major_minor_patch}/mac/Electron-Cash-#{version}-macosx.dmg"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://electroncash.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Electron[._-]Cash[._-]v?(\d+(?:\.\d+)+)[._-]macosx\.dmg/i)
  end

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"
end
