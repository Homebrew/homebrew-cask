cask "electron-cash" do
  version "4.4.0"
  sha256 "c9313b3f15ea310ad827d32e8c2df8bb8378c6d166d1d0745c02f0f2dbfd91de"

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
