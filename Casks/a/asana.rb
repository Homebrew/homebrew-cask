cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "fc2ebd6d4f1aa489dc3fe5ba70d0d30a7bbf0c0e8905d64d06508b63c00c282d",
         intel: "0ec4019b3f0505c48750e14a6fab6909b35c5ffd1fd8d1d9e38867020b1d6a77"

  url "https://desktop-downloads.asana.com/darwin_#{arch}/prod/v#{version}/Asana-darwin-#{arch}-#{version}.zip"
  name "Asana"
  desc "Manage team projects and tasks"
  homepage "https://asana.com/"

  livecheck do
    url "https://desktop-downloads.asana.com/darwin_#{arch}/prod/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Asana.app"

  zap trash: [
    "~/Library/Application Support/Asana",
    "~/Library/Caches/com.electron.asana",
    "~/Library/Caches/com.electron.asana.ShipIt",
    "~/Library/Preferences/com.electron.asana.plist",
    "~/Library/Saved Application State/com.electron.asana.savedState",
  ]
end
