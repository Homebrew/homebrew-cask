cask "locationsimulator" do
  version "0.2.0"
  sha256 "a9339a41711060fa4d213e3e6680b3dfc38b3bff37bbb908f0adfc2245069521"

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
