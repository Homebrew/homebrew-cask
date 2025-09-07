cask "serial" do
  version "2.0.18"
  sha256 "508a3fa86bafc216f6d0cef95d9142c3a0281b4ff65f1f765f81571b6b38509c"

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

  zap trash: [
    "~/Library/Application Scripts/com.decisivetactics.serial*",
    "~/Library/Caches/com.apple.helpd/Generated/com.decisivetactics.serial*",
    "~/Library/Caches/com.decisivetactics.serial*",
    "~/Library/Containers/com.decisivetactics.serial*",
    "~/Library/HTTPStorages/com.decisivetactics.serial*",
    "~/Library/Preferences/com.decisivetactics.serial.direct.plist",
    "~/Library/Saved Application State/com.decisivetactics.serial*",
  ]
end
