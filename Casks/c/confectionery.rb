cask "confectionery" do
  version "1.2.1"
  sha256 "8f8d8e666a9809ddb171abe68b1d341327a13e4d649873648f129fdebd93d043"

  url "https://app-updates.vadimdemedes.com/confectionery/download/Confectionery-#{version}-mac.dmg",
      verified: "app-updates.vadimdemedes.com/confectionery/download/"
  name "Confectionery"
  desc "Website screenshot tool"
  homepage "https://confectioneryapp.com/"

  livecheck do
    url "https://app-updates.vadimdemedes.com/confectionery/update/darwin/0.0.0"
    strategy :json do |json|
      json["name"]&.tr("v", "")
    end
  end

  app "Confectionery.app"

  zap trash: [
    "~/Library/Application Support/Confectionery",
    "~/Library/Preferences/com.vadimdemedes.Confectionery.plist",
    "~/Library/Saved Application State/com.vadimdemedes.Confectionery.savedState",
  ]
end
