cask "locationsimulator" do
  version "0.1.9.8"
  sha256 "851f2d2f127670e4ebd5beca727e531192cacb2fe06ab28a121643e55fd4b674"

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
