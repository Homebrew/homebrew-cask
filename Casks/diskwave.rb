cask "diskwave" do
  version "0.4-3"
  sha256 "733ac81464bf66928e6e6eb59bb7f2c15e32ff38694c42a0fa7808a1a4a7a295"

  url "https://diskwave.barthe.ph/download/DiskWave_#{version}.dmg"
  name "DiskWave"
  desc "Utility to determine what files and folders consume the most disk space"
  homepage "https://diskwave.barthe.ph/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/DiskWave[._-]v?(\d+(?:\.\d+)*(?:-\d+)?)\.dmg}i)
  end

  app "DiskWave.app"
end
