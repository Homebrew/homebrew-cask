cask "safeincloud-password-manager" do
  version "24.9.4,2409004"
  sha256 :no_check

  url "https://www.safe-in-cloud.com/download/SafeInCloud.dmg"
  name "SafeInCloud Password Manager"
  desc "Cross-platform AES-256 password manager"
  homepage "https://www.safe-in-cloud.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "SafeInCloud Password Manager.app"

  zap trash: [
    "~/Library/Application Scripts/com.safeincloud.Safe-In-Cloud.OSX",
    "~/Library/Application Scripts/com.safeincloud.Safe-In-Cloud.OSX.Safari-Extension",
    "~/Library/Containers/com.safeincloud.Safe-In-Cloud.OSX",
    "~/Library/Containers/com.safeincloud.Safe-In-Cloud.OSX.Safari-Extension",
  ]
end
