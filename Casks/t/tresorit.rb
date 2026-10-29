cask "tresorit" do
  version "3.5.3591.4880"
  sha256 :no_check

  url "https://installer.tresorit.com/Tresorit.dmg"
  name "Tresorit"
  desc "Client for the Tresorit cloud storage service"
  homepage "https://tresorit.com/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      headers["x-ms-meta-version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Tresorit.app"

  uninstall launchctl:  "com.tresorit.mac.ExtensionHelper",
            login_item: "Tresorit"

  zap trash: [
    "~/Library/Application Scripts/986R6FFN66.com.tresorit.mac",
    "~/Library/Application Scripts/com.tresorit.mac.FileProvider",
    "~/Library/Application Scripts/com.tresorit.mac.TresoritExtension*",
    "~/Library/Application Support/Tresorit",
    "~/Library/Containers/com.tresorit.mac.FileProvider",
    "~/Library/Containers/com.tresorit.mac.TresoritExtension*",
    "~/Library/Group Containers/986R6FFN66.com.tresorit.mac",
    "~/Library/Preferences/com.tresorit.mac.plist",
  ]
end
