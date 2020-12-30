cask "locationsimulator" do
  version "0.1.7"
  sha256 "f932fd797bcea1562816550b4b6965e82d5d85f119f389c36a449a71cff76f77"

  url "https://github.com/Schlaubischlump/LocationSimulator/releases/download/v#{version}/LocationSimulator_without_dependencies.app.zip"
  appcast "https://github.com/SchlaubiSchlump/LocationSimulator/releases.atom"
  name "LocationSimulator"
  desc "Application to spoof your iOS / iPadOS device location"
  homepage "https://github.com/Schlaubischlump/LocationSimulator"

  depends_on formula: "libimobiledevice"
  depends_on macos: ">= :catalina"

  app "LocationSimulator.app"

  zap trash: [
    "~/Library/Application Support/LocationSimulator",
    "~/Library/Preferences/com.schlaubi.LocationSimulator.plist",
  ]
end
