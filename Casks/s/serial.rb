cask "serial" do
  version "2.0.15"
  sha256 "11d0e67dcda25c27e2151fa523095d13461f0a0b09eac89de04ac94933c08b53"

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version}.zip"
  name "Serial"
  desc "Connect to almost anything with a serial port"
  homepage "https://www.decisivetactics.com/products/serial/"

  livecheck do
    url "https://api.decisivetactics.com/api/v1/public/appcast?app=serial"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Serial.app"
end
