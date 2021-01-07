cask "drivedx" do
  version "1.10.1"
  sha256 "9720750128a0f5489ca1a09b9fd56a29c534566866b860d7992067aaefd8f9f5"

  url "https://binaryfruit.com/download/drivedx/mac/#{version.major}/bin/DriveDx.#{version}.zip"
  appcast "https://binaryfruit.com/download/drivedx/mac/#{version.major}/updates/?appcast&appName=DriveDxMac"
  name "DriveDX"
  desc "Drive health diagnostic & monitoring tool"
  homepage "https://binaryfruit.com/drivedx"

  app "DriveDx.app"
end
