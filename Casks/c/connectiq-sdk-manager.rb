cask "connectiq-sdk-manager" do
  version "1.0.15"
  sha256 :no_check

  url "https://developer.garmin.com/downloads/connect-iq/sdk-manager/connectiq-sdk-manager.dmg"
  name "Connect IQ SDK Manager"
  desc "Manage SDKs and download device definitions for Garmin Connect IQ development"
  homepage "https://developer.garmin.com/connect-iq/sdk/"

  livecheck do
    url "https://developer.garmin.com/downloads/connect-iq/sdk-manager/sdk-manager.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "SdkManager.app"

  zap trash: "~/Library/Preferences/com.garmin.connectiq.sdkmanager.plist"
end
