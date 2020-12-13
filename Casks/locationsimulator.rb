cask "locationsimulator" do
  version "0.1.5"
  sha256 "699f212e81bbf0c7f501c10fa3952fcc3d9551218270398657e1b6d633f02da4"

  url "https://github.com/Schlaubischlump/LocationSimulator/releases/download/v#{version}/LocationSimulator_without_dependencies.app.zip"
  appcast "https://github.com/SchlaubiSchlump/LocationSimulator/releases.atom"
  name "LocationSimulator"
  desc "Application to spoof your iOS / iPadOS / TvOS device location"
  homepage "https://github.com/Schlaubischlump/LocationSimulator"

  depends_on formula: "libimobiledevice"
  depends_on macos: ">= :high_sierra"

  app "LocationSimulator.app"

  zap trash: [
    "~/Library/Application Support/LocationSimulator",
    "~/Library/Preferences/com.schlaubi.LocationSimulator.plist",
  ]
end
