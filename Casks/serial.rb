cask "serial" do
  version "2.0.13,02001.37.50"
  sha256 "4064c9e2c2e87b1a07b89d62534dcf6592e596c77f2b20f3f34ab463648ee154"

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
