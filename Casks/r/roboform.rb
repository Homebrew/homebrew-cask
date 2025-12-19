cask "roboform" do
  version "9.9.1"
  sha256 :no_check

  url "https://www.roboform.com/dist/roboform-mac-v#{version.major}.dmg"
  name "RoboForm"
  desc "Password manager and form filler application"
  homepage "https://www.roboform.com/"

  livecheck do
    url "https://www.roboform.com/news-mac"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "RoboForm.app"

  zap trash: [
    "~/Library/Application Scripts/*.com.SiberSystems.RoboForm",
    "~/Library/Application Scripts/com.SiberSystems.RoboForm.safari-companion*",
    "~/Library/Application Scripts/com.sibersystems.RoboFormMac.RFCredentialProvider",
    "~/Library/Application Scripts/com.sibersystems.RoboFormMac.SafariAppExtension",
    "~/Library/Application Support/com.SiberSystems.RoboForm",
    "~/Library/Application Support/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Application Support/com.sibersystems.RoboFormMac",
    "~/Library/Application Support/RoboForm",
    "~/Library/Caches/com.crashlytics.data/com.SiberSystems.RoboForm",
    "~/Library/Caches/com.crashlytics.data/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Caches/com.SiberSystems.RoboForm",
    "~/Library/Caches/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Caches/com.sibersystems.RoboFormMac",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.SiberSystems.RoboForm",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Containers/com.SiberSystems.RoboForm.safari-companion*",
    "~/Library/Containers/com.sibersystems.RoboFormMac.RFCredentialProvider",
    "~/Library/Containers/com.sibersystems.RoboFormMac.SafariAppExtension",
    "~/Library/Group Containers/*.com.SiberSystems.RoboForm",
    "~/Library/HTTPStorages/com.SiberSystems.RoboForm",
    "~/Library/HTTPStorages/com.sibersystems.RoboFormMac",
    "~/Library/Preferences/com.SiberSystems.RoboForm.plist",
    "~/Library/Preferences/com.sibersystems.RoboFormMac.plist",
    "~/Library/Saved Application State/com.SiberSystems.RoboForm.savedState",
    "~/Library/WebKit/com.sibersystems.RoboFormMac",
  ]
end
