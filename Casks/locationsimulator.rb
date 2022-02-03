cask "locationsimulator" do
  version "0.1.8"
  sha256 "108b4abf339f977d6fd2d94bce89ae1a4c5afd2c59ee2260afb4e726ac0332f0"

  url "https://github.com/Schlaubischlump/LocationSimulator/releases/download/v#{version}/LocationSimulator.app.zip"
  name "LocationSimulator"
  desc "MacOS 10.15.X / 11.X / 12.X application to spoof your iOS / iPadOS or iPhoneSimulator device location."
  homepage "https://github.com/Schlaubischlump/LocationSimulator"

  depends_on macos: ">= :catalina"

  app "LocationSimulator.app"

  zap trash: [
    "~/Library/Application Support/LocationSimulator",
    "~/Library/Preferences/com.schlaubi.LocationSimulator.plist",
  ]
end
