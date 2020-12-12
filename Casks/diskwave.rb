cask "diskwave" do
  version "0.4"
  sha256 "976324e46e4ca4d54240de13cf2c6f0db9afdb703b0e6ef78e2b5b5d36d63e75"

  url "https://diskwave.barthe.ph/download/DiskWave_#{version}.dmg"
  appcast "https://diskwave.barthe.ph/changelog.html"
  name "DiskWave"
  desc "Utility to determine what files and folders consume the most disk space"
  homepage "https://diskwave.barthe.ph/"

  app "DiskWave.app"
end
