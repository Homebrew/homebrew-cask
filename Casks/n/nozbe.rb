cask "nozbe" do
  version "2024.24"
  sha256 "589833a972618cdc7ccdd1b6bd7f9d9a16cd972397c72a4ce6f62a925632f983"

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
