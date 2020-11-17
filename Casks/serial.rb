cask "serial" do
  version "2.0.5"
  sha256 "f17db1aa5d7fbbbd15c8635203418b2729f7a679941a72b8e2ce9b43695170c4"

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version}.zip"
  appcast "https://api.decisivetactics.com/api/v1/public/appcast?app=serial"
  name "Serial"
  desc "Connect to almost anything with a serial port"
  homepage "https://www.decisivetactics.com/products/serial/"

  app "Serial.app"
end
