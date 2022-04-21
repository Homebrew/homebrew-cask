cask "locationsimulator" do
  version "0.1.9"
  sha256 "b772734809262ccf4eec8f18267eb97e70b668f8170f27c25844b5ae39af550f"

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
