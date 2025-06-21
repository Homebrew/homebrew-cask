cask "electron-cash" do
  version "4.4.2"
  sha256 "69afe1ec44e4c8ebc939795835420bb5e4057a452beec83b546ff8233d34db4d"

  url "https://electroncash.org/downloads/#{version.major_minor_patch}/mac/Electron-Cash-#{version}-macosx.dmg"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://electroncash.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Electron[._-]Cash[._-]v?(\d+(?:\.\d+)+)[._-]macosx\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"

  caveats do
    requires_rosetta
  end
end
