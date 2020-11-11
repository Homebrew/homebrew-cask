cask "serial" do
  version "2.0.3"
  sha256 "07edfef330e0377659b44b5c350b21ed566ee68f7f4963b425712703753bd542"

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version}.zip"
  appcast "https://api.decisivetactics.com/api/v1/public/appcast?app=serial"
  name "Serial"
  desc "Connect to almost anything with a serial port"
  homepage "https://www.decisivetactics.com/products/serial/"

  app "Serial.app"
end
