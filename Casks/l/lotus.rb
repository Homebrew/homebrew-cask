cask "lotus" do
  version "1.3.3"
  sha256 "198646e1fd02c07c2695b7d1ffcda1473103734f971b13524440e4fdf4fee1b0"

  url "https://app-updates.vadimdemedes.com/lotus/download/Lotus-#{version}-mac.zip",
      verified: "app-updates.vadimdemedes.com/lotus/download/"
  name "Lotus"
  desc "Keep up with GitHub notifications"
  homepage "https://getlotus.app/"

  livecheck do
    url "https://lotus-updates.vercel.app/update/darwin/0.0.0"
    strategy :json do |json|
      json["name"]&.tr("v", "")
    end
  end

  depends_on macos: ">= :el_capitan"

  app "Lotus.app"

  zap trash: [
    "~/Library/Application Support/Lotus",
    "~/Library/Caches/com.vadimdemedes.Lotus",
    "~/Library/Caches/com.vadimdemedes.Lotus.ShipIt",
    "~/Library/HTTPStorages/com.vadimdemedes.Lotus",
    "~/Library/Preferences/com.vadimdemedes.Lotus.plist",
    "~/Library/Saved Application State/com.vadimdemedes.Lotus.savedState",
  ]
end
