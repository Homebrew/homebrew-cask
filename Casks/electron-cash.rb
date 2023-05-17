cask "electron-cash" do
  version "4.3.0"
  sha256 "1682d657800652330f0b3c756203a9f3bdaf0cc70383ddff0d6c2afbacc26b60"

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
