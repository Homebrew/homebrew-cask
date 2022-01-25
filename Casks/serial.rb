cask "serial" do
  version "2.0.12,02001.27.50"
  sha256 "48e23a1d0b8e18579ae158d908c95e56a50ee98d1d26e536ae15bea887558d02"

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version.csv.first}.zip"
  name "Serial"
  desc "Connect to almost anything with a serial port"
  homepage "https://www.decisivetactics.com/products/serial/"

  livecheck do
    url "https://api.decisivetactics.com/api/v1/public/appcast?app=serial"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Serial.app"
end
