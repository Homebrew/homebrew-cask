cask "locationsimulator" do
  version "0.1.9.6"
  sha256 "6380425b63188ead9240ad36a9b3a7d75ca2b5d159fdd2b77210c36ade0cd43a"

  url "https://github.com/Schlaubischlump/LocationSimulator/releases/download/v#{version}/LocationSimulator.app.zip"
  name "LocationSimulator"
  desc "Application to spoof your iOS, iPadOS or iPhoneSimulator device location"
  homepage "https://github.com/Schlaubischlump/LocationSimulator"

  depends_on macos: ">= :catalina"

  app "LocationSimulator.app"

  zap trash: [
    "~/Library/Application Support/LocationSimulator",
    "~/Library/Preferences/com.schlaubi.LocationSimulator.plist",
  ]
end
