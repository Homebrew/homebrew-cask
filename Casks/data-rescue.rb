cask "data-rescue" do
  version "6.0.6,6213.62.03"
  sha256 "2e4186325d13a8442fe7ef4b3f9c3d75578d2cbcf911537f85ca07e898970884"

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version.csv.first}.dmg"
  name "Data Rescue #{version.major}"
  desc "Data recovery software"
  homepage "https://www.prosofteng.com/data-rescue-recovery-software/"

  livecheck do
    url "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
    strategy :sparkle
  end

  app "Data Rescue.app"

  uninstall quit:   "com.prosofteng.DataRescue",
            delete: "/Library/Application Support/Data Rescue"

  zap trash: [
    "~/Library/Application Support/Data Rescue",
    "~/Library/HTTPStorages/com.prosofteng.DataRescue",
    "~/Library/Preferences/com.prosofteng.Data Rescue.plist",
    "~/Library/Preferences/com.prosofteng.DataRescue.plist",
    "~/Library/Saved Application State/com.prosofteng.DataRescue.savedState",
  ]
end
