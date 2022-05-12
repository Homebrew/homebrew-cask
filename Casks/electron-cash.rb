cask "electron-cash" do
  version "4.2.9"
  sha256 "b709ffd8fcbb43c369af73c85efd1f90602d603c627b29e9b7400a236a26f890"

  url "https://electroncash.org/downloads/#{version.major_minor_patch}/mac/Electron-Cash-#{version}-macosx.dmg"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://electroncash.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Electron[._-]Cash[._-]v?(\d+(?:\.\d+)+)[._-]macosx\.dmg}i)
  end

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"
end
