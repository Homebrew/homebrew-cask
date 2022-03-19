cask "electron-cash" do
  version "4.2.6"
  sha256 "a14936681c517edd1aa5a99824e55322b4213c06e36486f8e45275c1a37cd6db"

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
