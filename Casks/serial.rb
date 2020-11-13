cask "serial" do
  version "2.0.4"
  sha256 "feed4fcc1be4c747fdc3868b1c235d2a1c25627b22c07df44639c93355b60e85"

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version}.zip"
  appcast "https://api.decisivetactics.com/api/v1/public/appcast?app=serial"
  name "Serial"
  desc "Connect to almost anything with a serial port"
  homepage "https://www.decisivetactics.com/products/serial/"

  app "Serial.app"
end
