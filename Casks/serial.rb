cask "serial" do
  version "2.0.14,02001.47.50"
  sha256 "56710424e83ce6b4736bf23d9d3dcf412ec4153097e5a2d87a6380d6b912bc21"

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
