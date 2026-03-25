cask "locationsimulator" do
  version "0.2.2"
  sha256 "867941213a23e23c22a3e868e0fa5fec443d1e597e912eca8a1e97f68e7dbb08"

  url "https://github.com/Schlaubischlump/LocationSimulator/releases/download/v#{version}/LocationSimulator.app.zip"
  name "LocationSimulator"
  desc "Application to spoof your iOS, iPadOS or iPhoneSimulator device location"
  homepage "https://github.com/Schlaubischlump/LocationSimulator"

  app "LocationSimulator.app"

  zap trash: [
    "~/Library/Application Scripts/de.davidklopp.locationsimulator",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.davidklopp.locationsimulator.sfl*",
    "~/Library/Application Support/LocationSimulator",
    "~/Library/Caches/com.apple.helpd/Generated/de.davidklopp.locationsimulatorhelp*0.2.2",
    "~/Library/Containers/de.davidklopp.locationsimulator",
    "~/Library/Preferences/com.schlaubi.LocationSimulator.plist",
  ]
end
