cask "drivedx" do
  version "1.10.0"
  sha256 "b143979dafb578662ba038f926350480da45a4103a4c8d8917d45cc979a242cc"

  url "https://binaryfruit.com/download/drivedx/mac/#{version.major}/bin/DriveDx.#{version}.zip"
  appcast "https://binaryfruit.com/download/drivedx/mac/#{version.major}/updates/?appcast&appName=DriveDxMac"
  name "DriveDX"
  desc "Drive health diagnostic & monitoring tool"
  homepage "https://binaryfruit.com/drivedx"

  app "DriveDX.app"
end
