cask "serial" do
  version "2.0.11,02001.17.50"
  sha256 "43139a79a004510c1f8d21dee355cdc0bad1acef5fabf37635e81987bc9f9a62"

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version.before_comma}.zip"
  name "Serial"
  desc "Connect to almost anything with a serial port"
  homepage "https://www.decisivetactics.com/products/serial/"

  livecheck do
    url "https://api.decisivetactics.com/api/v1/public/appcast?app=serial"
    strategy :sparkle
  end

  auto_updates true

  app "Serial.app"
end
