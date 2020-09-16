cask "drivedx" do
  version "1.9.1"
  sha256 "cdea2b9609b2c31f0e7df0f558c5bd1198ded0dbd5eaf643b118c0fedc8621e2"

  url "https://binaryfruit.com/download/drivedx/mac/#{version.major}/bin/DriveDx.#{version}.zip"
  appcast "https://binaryfruit.com/download/drivedx/mac/#{version.major}/updates/?appcast&appName=DriveDxMac"
  name "DriveDX"
  desc "Drive health diagnostic & monitoring tool"
  homepage "https://binaryfruit.com/drivedx"

  app "DriveDX.app"
end
