cask "nozbe" do
  version "2025.20"
  sha256 "9e7477546bcc2d43bbddcf203a5af9f0e88bc67f72f9531a4f83edb33ba17281"

  url "https://builds.nozbe.com/mac/#{version}/Nozbe.app.zip"
  name "Nozbe"
  desc "Project management app"
  homepage "https://nozbe.com/"

  livecheck do
    url "https://builds.nozbe.com/updates.mac.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Nozbe.app"

  zap trash: [
    "~/Library/Application Support/Nozbe4",
    "~/Library/Caches/com.nozbe4mac",
    "~/Library/Caches/com.nozbe4mac.ShipIt",
    "~/Library/HTTPStorages/com.nozbe4mac",
    "~/Library/Preferences/com.nozbe4mac.plist",
    "~/Library/Saved Application State/com.nozbe4mac.savedState",
  ]
end
