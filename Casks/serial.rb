cask "serial" do
  version "2.0.10,02001.07.50"
  sha256 "a84791d9db5f7bad01427fb73326e2270c5c8ab6311dfaa0d850036e5aeb606a"

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
