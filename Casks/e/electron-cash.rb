cask "electron-cash" do
  version "4.4.3"
  sha256 "14c627c6fd1819833dd4ce242c29bc5b502e0d3d75030a8a49540160740ee8db"

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

  caveats do
    requires_rosetta
  end
end
