cask "serial" do
  version "2.0.6"
  sha256 "f1e34936871517fb705d9fce03f19cc78ed4bc253c58c13b4b7e0e1eba4feff9"

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version}.zip"
  appcast "https://api.decisivetactics.com/api/v1/public/appcast?app=serial"
  name "Serial"
  desc "Connect to almost anything with a serial port"
  homepage "https://www.decisivetactics.com/products/serial/"

  app "Serial.app"
end
