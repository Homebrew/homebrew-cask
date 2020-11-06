cask "serial" do
  version "2.0.2"
  sha256 "f22fe5a062cfc4cb5be64a4e864f21078a7b2606d1b551a0aae69ae6b57459e8"

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version}.zip"
  appcast "https://api.decisivetactics.com/api/v1/public/appcast?app=serial"
  name "Serial"
  desc "Connect to almost anything with a serial port"
  homepage "https://www.decisivetactics.com/products/serial/"

  app "Serial.app"
end
