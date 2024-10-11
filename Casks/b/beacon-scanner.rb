cask "beacon-scanner" do
  version "1.1.13"
  sha256 "5b28a510f557e57e5cf48490e982aadaba1676c34192e7d650da110a88d233bd"

  url "https://github.com/mlwelles/BeaconScanner/releases/download/#{version}/Beacon.Scanner.zip"
  name "BeaconScanner"
  desc "Utility to scan for iBeacon-compatible devices"
  homepage "https://github.com/mlwelles/BeaconScanner/"

  deprecate! date: "2024-10-10", because: :unmaintained

  app "Beacon Scanner.app"

  caveats do
    requires_rosetta
  end
end
