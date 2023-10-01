cask "serial" do
  version "2.0.16"
  sha256 "71d0d82af138a91b084e6cb2a951c2d99f634cb8694b35455fc091da3fb2d294"

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
